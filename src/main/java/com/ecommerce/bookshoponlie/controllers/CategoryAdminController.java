package com.ecommerce.bookshoponlie.controllers;

import com.ecommerce.bookshoponlie.models.Category;
import com.ecommerce.bookshoponlie.services.CategoriesServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/admincp/")
public class CategoryAdminController {
    @Autowired
    CategoriesServiceImpl objCategoriesService = new CategoriesServiceImpl();

    @RequestMapping(value = "category", method = RequestMethod.GET, produces="application/json")
    public String index(ModelMap modelMap) {
        List<Category> listCat = objCategoriesService.getAllCategory(1);
        modelMap.addAttribute("listCat",listCat);
        return "admin.category";
    }

    @RequestMapping(value = "category/delete/{id}", method = RequestMethod.GET, produces="application/json")
    public String delete(RedirectAttributes ra, @PathVariable("id") int id) {
        System.out.println("ID: "+id);
        if(objCategoriesService.deleteCategory(id)){
            ra.addFlashAttribute("msg", "Xóa thành công !");
        }else{
            ra.addFlashAttribute("msg", "Xóa thành công !");
        }
        return "redirect:/admincp/category";
    }

    @RequestMapping(value = "category/add", method = RequestMethod.GET, produces="application/json")
    public String show() {
        return "admin.category.add";
    }

    @RequestMapping(value = "category/add", method = RequestMethod.POST, produces="application/json")
    public String add(@ModelAttribute("objCategory") Category objCategory,RedirectAttributes ra) {
        if(objCategoriesService.addCategory(objCategory)) {
            ra.addFlashAttribute("msg", "Thêm thành công !");
        }else{
            ra.addFlashAttribute("msg", "Thêm thất bại !");
        }
        return "redirect:/admincp/category";
    }

    @RequestMapping(value = "category/{id}", method = RequestMethod.GET, produces="application/json")
    public String edit(ModelMap modelMap, @PathVariable("id") int id) {
        Category category = objCategoriesService.getById(id);
        modelMap.addAttribute("objCategory",category);
        return "admin.category.edit";
    }

    @RequestMapping(value = "category/edit", method = RequestMethod.POST, produces="application/json")
    public String edit(@ModelAttribute("objCategory") Category objCategory, ModelMap modelMap, RedirectAttributes ra) {
        try {
            objCategoriesService.updateCategory(objCategory);
            ra.addFlashAttribute("msg", "Sửa thành công !");
        }catch (Exception e){
            ra.addFlashAttribute("msg", "Sửa thất bại !");
            e.printStackTrace();
        }
        return "redirect:/admincp/category";
    }
}