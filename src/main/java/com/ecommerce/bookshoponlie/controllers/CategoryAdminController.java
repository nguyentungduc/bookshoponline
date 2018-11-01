package com.ecommerce.bookshoponlie.controllers;

import com.ecommerce.bookshoponlie.models.Category;
import com.ecommerce.bookshoponlie.services.CategoriesServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/admincp/")
public class CategoryAdminController {
    @Autowired
    CategoriesServiceImpl objCategoriesService = new CategoriesServiceImpl();

    @ModelAttribute
    public void addCommonObject(ModelMap model) {
        model.addAttribute("totalPage", objCategoriesService.getTotalPage());
    }
    @RequestMapping(value = "category", method = RequestMethod.GET, produces="application/json")
    public String index(ModelMap modelMap) {
        List<Category> listCat = objCategoriesService.getAllObject(1);
        modelMap.addAttribute("listCat",listCat);
        return "admin.category";
    }

    @RequestMapping(value = "category/delete/{id}", method = RequestMethod.GET, produces="application/json")
    public String delete(RedirectAttributes ra, @PathVariable("id") int id) {
        System.out.println("ID: "+id);
        if(objCategoriesService.deleteObject(id)){
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
        if(objCategoriesService.addObject(objCategory)) {
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
            objCategoriesService.updateObject(objCategory);
            ra.addFlashAttribute("msg", "Sửa thành công !");
        }catch (Exception e){
            ra.addFlashAttribute("msg", "Sửa thất bại !");
            e.printStackTrace();
        }
        return "redirect:/admincp/category";
    }

    @RequestMapping(value = "category/ajax_page", method = RequestMethod.POST,produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String page(@RequestParam("apage") int apage, HttpServletRequest request) {
        String data="";
        List<Category> listCategory = objCategoriesService.getAllObject(apage);
        for (Category obj : listCategory) {
            data+="<tr><td style='width:5%' actions center text-center no-sort>"+obj.getId()+"</td>"
                    +"<td>"+obj.getName()+"</td>"
                    +"<td class='actions'>"
                    +"<a href='"+request.getContextPath()+"/admincp/category/"+obj.getId()+"' title='' style='padding: 5px;' class='on-default edit-row''><i class='fa fa-pencil'></i></a>"
                    +"<a href='"+request.getContextPath()+"/admincp/category/delete/"+obj.getId()+"' title='' style='padding: 5px;' class='on-default remove-row' onclick='return confirmAction()'><i class='fa fa-trash-o'></i></a>"
                    +"</td></tr>";
        }
        return data;
    }
}