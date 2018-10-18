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
    @GetMapping("/product")
    public String showProduct(ModelMap modelMap) {
        return "public.products";
    }
    @GetMapping("/checkout")
    public String showCheckout(ModelMap modelMap) {
        return "public.checkout";
    }
    @GetMapping("/detail")
    public String showDetail(ModelMap modelMap) {
        return "public.detail";
    }
    @GetMapping("/register")
    public String showRegister(ModelMap modelMap) {
        return "public.register";
    }
    @GetMapping("/category")
    public String showCategory(ModelMap modelMap) {
        return "public.category";
    }
}
