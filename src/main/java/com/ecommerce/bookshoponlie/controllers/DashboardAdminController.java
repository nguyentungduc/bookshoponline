package com.ecommerce.bookshoponlie.controllers;

import com.ecommerce.bookshoponlie.models.Supplier;
import com.ecommerce.bookshoponlie.services.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/admincp")
public class DashboardAdminController {
    PublisherSerrviceImpl publisherService = new PublisherSerrviceImpl();
    UserServiceImpl userService = new UserServiceImpl();
    BookSerrviceImpl bookService = new BookSerrviceImpl();
    LanguageSerrviceImpl languageService = new LanguageSerrviceImpl();


    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        int totalUser = userService.getAllUser(1).size();
        int totalBook = bookService.getAllBook(1).size();
        int totalLanguage = languageService.getAllPublisher(1).size();
        int totalPublisher = publisherService.getAllPublisher(1).size();
        modelMap.addAttribute("totalUser",totalUser);
        modelMap.addAttribute("totalBook",totalBook);
        modelMap.addAttribute("totalLanguage",totalLanguage);
        modelMap.addAttribute("totalPublisher",totalPublisher);
        return "admin.dashboard";
    }
}