package com.ecommerce.bookshoponlie.controllers;

import com.ecommerce.bookshoponlie.models.Book;
import com.ecommerce.bookshoponlie.models.User;
import com.ecommerce.bookshoponlie.services.BookSerrviceImpl;
import com.ecommerce.bookshoponlie.services.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/admincp/")
public class BookAdminController {
    @Autowired
    BookSerrviceImpl bookSerrvice = new BookSerrviceImpl();

    @RequestMapping(value = "book", method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        List<Book> books = bookSerrvice.getAllBook(1);
        modelMap.addAttribute("books",books);
        return "admin.book";
    }
//    @RequestMapping(value = "/user/active", method = RequestMethod.POST)
//    String active(@RequestParam("aid") int aid, @RequestParam("att") int att) {
//        String data = "";
//        if (att == 1) {
//            data = "<a style=\"color: #429c37;text-decoration: none;font-size: 23px;\" href='javascript:void(0)' onclick='changeActive("
//                    + aid + "," + 0 + ")'>" + "<span class=\"glyphicon glyphicon-lock\"></span>" + "</a>";
//        } else {
//            data = "<a style=\"color: #429c37;text-decoration: none;font-size: 23px;\" href='javascript:void(0)' onclick='changeActive("
//                    + aid + "," + 1 + ")'>" + "<span class=\"glyphicon glyphicon-ok-sign\"></span>" + "</a>";
//        }
//        if (att == 0) {
//            att = 1;
//        } else {
//            att = 0;
//        }
//        User user = new User();
//        user.setId(aid);
//        user.setStatus(att);
//        userService.updateUser(user);
//        return data;
//    }
//    @RequestMapping(value = "user/add", method = RequestMethod.GET, produces="application/json")
//    public String show() {
//        return "admin.user.add";
//    }
//    @RequestMapping(value ="user/add", method = RequestMethod.POST, produces="application/json")
//    public String add(@ModelAttribute("user") User user, RedirectAttributes ra) {
//        user.setId(0);
//        if(userService.addUser(user)) {
//            ra.addFlashAttribute("msg", "Thêm thành công !");
//        }else{
//            ra.addFlashAttribute("msg", "Thêm thất bại !");
//        }
//        return "redirect:/admincp/user";
//    }
    @RequestMapping(value = "book/{id}", method = RequestMethod.GET, produces="application/json")
    public String edit(ModelMap modelMap, @PathVariable("id") int id) {
        Book book = bookSerrvice.getById(id);
        modelMap.addAttribute("book",book);
        return "admin.book.edit";
    }
}