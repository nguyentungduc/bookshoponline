//package com.ecommerce.bookshoponlie.controllers;
//
//import com.ecommerce.bookshoponlie.models.Category;
//import com.ecommerce.bookshoponlie.models.Publisher;
//import com.ecommerce.bookshoponlie.services.CategoriesServiceImpl;
//import com.ecommerce.bookshoponlie.services.PublisherSerrviceImpl;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.bind.annotation.*;
//import org.springframework.web.servlet.mvc.support.RedirectAttributes;
//
//import javax.servlet.http.HttpServletRequest;
//import java.util.List;
//
//@Controller
//@RequestMapping("/admincp/")
//public class PublisherAdminController {
//    @Autowired
//    PublisherSerrviceImpl objPublisherService = new PublisherSerrviceImpl();
//    @ModelAttribute
//    public void addCommonObject(ModelMap model) {
//        model.addAttribute("totalPage", objPublisherService.getTotalPage());
//    }
//    @RequestMapping(value = "publisher", method = RequestMethod.GET, produces="application/json")
//    public String index(ModelMap modelMap) {
//        List<Publisher> listPublisher = objPublisherService.getAllCategory(1);
//        modelMap.addAttribute("listPublisher",listPublisher);
//        return "admin.publisher";
//    }
//
//    @RequestMapping(value = "publisher/delete/{id}", method = RequestMethod.GET, produces="application/json")
//    public String delete(RedirectAttributes ra, @PathVariable("id") int id) {
//        System.out.println("ID: "+id);
//        if(objPublisherService.deleteCategory(id)){
//            ra.addFlashAttribute("msg", "Xóa thành công !");
//        }else{
//            ra.addFlashAttribute("msg", "Xóa thành công !");
//        }
//        return "redirect:/admincp/publisher";
//    }
//
//    @RequestMapping(value = "publisher/add", method = RequestMethod.GET, produces="application/json")
//    public String show() {
//        return "admin.category.add";
//    }
//
//    @RequestMapping(value = "publisher/add", method = RequestMethod.POST, produces="application/json")
//    public String add(@ModelAttribute("objCategory") Category objCategory,RedirectAttributes ra) {
//        if(objPublisherService.addCategory(objCategory)) {
//            ra.addFlashAttribute("msg", "Thêm thành công !");
//        }else{
//            ra.addFlashAttribute("msg", "Thêm thất bại !");
//        }
//        return "redirect:/admincp/category";
//    }
//
//    @RequestMapping(value = "publisher/{id}", method = RequestMethod.GET, produces="application/json")
//    public String edit(ModelMap modelMap, @PathVariable("id") int id) {
//        Category category = objPublisherService.getById(id);
//        modelMap.addAttribute("objCategory",category);
//        return "admin.category.edit";
//    }
//
//    @RequestMapping(value = "publisher/edit", method = RequestMethod.POST, produces="application/json")
//    public String edit(@ModelAttribute("objCategory") Category objCategory, ModelMap modelMap, RedirectAttributes ra) {
//        try {
//            objPublisherService.updateCategory(objCategory);
//            ra.addFlashAttribute("msg", "Sửa thành công !");
//        }catch (Exception e){
//            ra.addFlashAttribute("msg", "Sửa thất bại !");
//            e.printStackTrace();
//        }
//        return "redirect:/admincp/category";
//    }
//
//    @RequestMapping(value = "publisher/ajax_page", method = RequestMethod.POST,produces = "text/plain;charset=UTF-8")
//    @ResponseBody
//    public String page(@RequestParam("apage") int apage, HttpServletRequest request) {
//        String data="";
//        List<Category> listCategory = objPublisherService.getAllCategory(apage);
//        for (Category obj : listCategory) {
//            data+="<tr><td style='width:5%'>"+obj.getId()+"</td>"
//                    +"<td>"+obj.getName()+"</td>"
//                    +"<td class='actions'>"
//                    +"<a href='"+request.getContextPath()+"/admincp/category/"+obj.getId()+"' title='' class='btn btn-primary''><span class='glyphicon glyphicon-pencil'></span> Sửa</a>"
//                    +"<a href='"+request.getContextPath()+"/admincp/category/delete/"+obj.getId()+"' title='' class='btn btn-danger' onclick='return confirmAction()'><span class='glyphicon glyphicon-trash' ></span> Xóa</a>"
//                    +"</td></tr>";
//        }
//        return data;
//    }
//}