package com.ecommerce.bookshoponlie.controllers;

import com.ecommerce.bookshoponlie.models.Category;
import com.ecommerce.bookshoponlie.services.CategoriesServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/admincp/")
public class CategoryAdminController {
    @Autowired
    CategoriesServiceImpl objCategoriesService = new CategoriesServiceImpl();

    @RequestMapping(value = "category", method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        List<Category> listCat = objCategoriesService.getAllPerson(1);
        modelMap.addAttribute("listCat",listCat);
        return "admin.category";
    }

    @RequestMapping(value = "category/delete/{id}", method = RequestMethod.GET)
    public String add(RedirectAttributes ra, @PathVariable("id") Long id) {
        objCategoriesService.deletePerson(id);
        return "admin.category";
    }


//    public static void main(String[] args) {
//        CategoriesServiceImpl objCategoriesService = new CategoriesServiceImpl();
//        List<Category> listCat = objCategoriesService.getAllPerson(1);
//
//        for (Category p : listCat) {
//            System.out.println(p.getName());
//        }
//    }
//    static final String URL_EMPLOYEES = "https://api-book-shop-online.herokuapp.com/api/categories/index?page=1";
//    public static void main(String[] args) {
//        RestTemplate restTemplate = new RestTemplate();
//        ResponseEntity<Category[]> response = restTemplate.getForEntity(URL_EMPLOYEES, Category[].class);
//        List<Category> result = Arrays.asList(response.getBody());
//        for(Category c : result) {
//            System.out.println(c.getName());
//        }
//    }
}