package com.ecommerce.bookshoponlie.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CategoryAdminController {
    @GetMapping("/category")
    public String showCategory(){
        return "admin.category";
    }
}
