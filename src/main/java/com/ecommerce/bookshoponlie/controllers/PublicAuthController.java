package com.ecommerce.bookshoponlie.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PublicAuthController {
    @GetMapping("/login")
    public String showLogin(ModelMap modelMap) {
        return "public.login";
    }
}
