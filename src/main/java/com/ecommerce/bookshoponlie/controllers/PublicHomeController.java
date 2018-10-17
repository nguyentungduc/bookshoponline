package com.ecommerce.bookshoponlie.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PublicHomeController {
    @GetMapping("/home")
    public String showHome(ModelMap modelMap) {
        return "public.home";
    }
}
