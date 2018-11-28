package com.ecommerce.bookshoponlie.controllers;

import com.ecommerce.bookshoponlie.models.Category;
import com.ecommerce.bookshoponlie.models.Language;
import com.ecommerce.bookshoponlie.models.Publisher;
import com.ecommerce.bookshoponlie.services.LanguageSerrviceImpl;
import com.ecommerce.bookshoponlie.services.PublisherSerrviceImpl;
import org.apache.commons.codec.language.bm.Lang;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/admincp/")
public class LanguageAdminController {
    LanguageSerrviceImpl languageSerrvice = new LanguageSerrviceImpl();

    @RequestMapping(value = "language", method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        List<Language> languages = languageSerrvice.getAllPublisher(1);
        modelMap.addAttribute("languages",languages);
        return "admin.language";
    }

    @RequestMapping(value = "language/add", method = RequestMethod.GET, produces="application/json")
    public String show() {
        return "admin.language.add";
    }

    @RequestMapping(value ="language/add", method = RequestMethod.POST, produces="application/json")
    public String add(@ModelAttribute("language") Language language,RedirectAttributes ra,ModelMap modelMap) {
        List<Language> listLang = languageSerrvice.getLanguageAll();
        for (Language obj:listLang) {
            if(obj.getName().equals(language.getName())){
                modelMap.addAttribute("nameLang",language.getName());
                return "admin.language.add";
            }
        }
        if(languageSerrvice.addLanguage(language)) {
            ra.addFlashAttribute("msg", "Thêm thành công !");
        }else{
            ra.addFlashAttribute("msg", "Thêm thất bại !");
        }
        return "redirect:/admincp/language";
    }

    @RequestMapping(value = "language/delete/{id}", method = RequestMethod.GET, produces="application/json")
    public String delete(RedirectAttributes ra, @PathVariable("id") int id) {
        System.out.println("ID: "+id);
        if(languageSerrvice.deleteLanguage(id)){
            ra.addFlashAttribute("msg", "Xóa thành công !");
        }else{
            ra.addFlashAttribute("msg", "Xóa thành công !");
        }
        return "redirect:/admincp/language";
    }

    @RequestMapping(value = "language/{id}", method = RequestMethod.GET, produces="application/json")
    public String edit(ModelMap modelMap, @PathVariable("id") int id) {
        Language language = languageSerrvice.getById(id);
        modelMap.addAttribute("language",language);
        return "admin.language.edit";
    }

    @RequestMapping(value = "language/edit", method = RequestMethod.POST, produces="application/json")
    public String edit(@ModelAttribute("language") Language language, ModelMap modelMap, RedirectAttributes ra) {
        List<Language> listLang = languageSerrvice.getLanguageAll();
        for (Language obj:listLang) {
            if(obj.getName().equals(language.getName())&&(obj.getId()!=language.getId())){
                modelMap.addAttribute("nameLang",language.getName());
                return "admin.language.edit";
            }
        }
        try {
            languageSerrvice.updateLanguage(language);
            ra.addFlashAttribute("msg", "Sửa thành công !");
        }catch (Exception e){
            ra.addFlashAttribute("msg", "Sửa thất bại !");
            e.printStackTrace();
        }
        return "redirect:/admincp/language";
    }
}