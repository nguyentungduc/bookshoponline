package com.ecommerce.bookshoponlie.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ContractAdminController {
    @GetMapping("/contact")
    public String showContract(){
        return "admin.contact";
    }
}
