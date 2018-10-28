package com.ecommerce.bookshoponlie.controllers;

import com.ecommerce.bookshoponlie.models.Category;
import com.ecommerce.bookshoponlie.models.Publisher;
import com.ecommerce.bookshoponlie.services.CategoriesServiceImpl;
import com.ecommerce.bookshoponlie.services.PublisherSerrviceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/admincp/")
public class PublisherAdminController {
    @Autowired
    PublisherSerrviceImpl objPublisherSerrvice = new PublisherSerrviceImpl();

    @RequestMapping(value = "publisher", method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        List<Publisher> publishers = objPublisherSerrvice.getAllPublisher(1);
        modelMap.addAttribute("publishers",publishers);
        return "admin.publisher";
    }
    @RequestMapping(value = "publisher/add", method = RequestMethod.GET, produces="application/json")
    public String show() {
        return "admin.publisher.add";
    }

    @RequestMapping(value ="publisher/add", method = RequestMethod.POST, produces="application/json")
    public String add(@ModelAttribute("publisher") Publisher publisher,RedirectAttributes ra) {
        publisher.setId(0);
        if(objPublisherSerrvice.addPublisher(publisher)) {
            ra.addFlashAttribute("msg", "Thêm thành công !");
        }else{
            ra.addFlashAttribute("msg", "Thêm thất bại !");
        }
        return "redirect:/admincp/publisher";
    }

    @RequestMapping(value = "publisher/delete/{id}", method = RequestMethod.GET, produces="application/json")
    public String delete(RedirectAttributes ra, @PathVariable("id") int id) {
        System.out.println("ID: "+id);
        if(objPublisherSerrvice.deleteObject(id)){
            ra.addFlashAttribute("msg", "Xóa thành công !");
        }else{
            ra.addFlashAttribute("msg", "Xóa thành công !");
        }
        return "redirect:/admincp/publisher";
    }
    @RequestMapping(value = "publisher/{id}", method = RequestMethod.GET, produces="application/json")
    public String edit(ModelMap modelMap, @PathVariable("id") int id) {
        Publisher publisher = objPublisherSerrvice.getById(id);
        modelMap.addAttribute("publisher",publisher);
        return "admin.publisher.edit";
    }
    @RequestMapping(value = "publisher/edit", method = RequestMethod.POST, produces="application/json")
    public String edit(@ModelAttribute("publisher") Publisher publisher, ModelMap modelMap, RedirectAttributes ra) {
        try {
            objPublisherSerrvice.updatePublisher(publisher);
            ra.addFlashAttribute("msg", "Sửa thành công !");
        }catch (Exception e){
            ra.addFlashAttribute("msg", "Sửa thất bại !");
            e.printStackTrace();
        }
        return "redirect:/admincp/publisher";
    }
}