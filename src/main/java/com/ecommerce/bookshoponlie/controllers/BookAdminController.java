package com.ecommerce.bookshoponlie.controllers;

import com.ecommerce.bookshoponlie.models.*;
import com.ecommerce.bookshoponlie.services.*;
import org.apache.commons.codec.language.bm.Lang;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/admincp/")
public class BookAdminController {
    BookSerrviceImpl bookSerrvice = new BookSerrviceImpl();
    LanguageSerrviceImpl languageService =  new LanguageSerrviceImpl();
    CategoriesServiceImpl categoriesService = new CategoriesServiceImpl();
    PublisherSerrviceImpl publisherSerrvice = new PublisherSerrviceImpl();

    @ModelAttribute
    public void addCommonObject(ModelMap model) {
        model.addAttribute("totalPage", bookSerrvice.getTotalPage());
        model.addAttribute("languageNames", languageService.getLanguageAll());
        model.addAttribute("categoryNames",categoriesService.getAllCategoryAll());
        model.addAttribute("publisherNames",publisherSerrvice.getAllpublisher());
    }
    @RequestMapping(value = "book", method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        List<Book> books = bookSerrvice.getAllBook(1);
        modelMap.addAttribute("books",books);
        return "admin.book";
    }

    @RequestMapping(value = "book/delete/{id}", method = RequestMethod.GET, produces="application/json")
    public String delete(RedirectAttributes ra, @PathVariable("id") int id) {
        System.out.println("ID: "+id);
        if(bookSerrvice.deleteObject(id)){
            ra.addFlashAttribute("msg", "Xóa thành công !");
        }else{
            ra.addFlashAttribute("msg", "Xóa thành công !");
        }
        return "redirect:/admincp/book";
    }
    @RequestMapping(value ="book/add", method = RequestMethod.POST, produces="application/json")
    public String add(@RequestParam("file") MultipartFile file, @RequestParam("files") MultipartFile[] files,@RequestParam("category_id") Integer category_id, @RequestParam("language_id") Integer language_id, @RequestParam("publisher_id") Integer publisher_id , @ModelAttribute("book")Book book, @ModelAttribute("detail") BookDetail detail, RedirectAttributes ra) {
        List<Category> list = new ArrayList<Category>();
        Category objCategory = new Category(category_id);
        Language objLanguage = new Language(language_id);
        list.add(objCategory);
        detail.setLanguage(objLanguage);
        book.setBookDetail(detail);
        book.setPublisher(new Publisher(publisher_id));
        book.setCategories(list);
        System.out.println(book.toString());
        if(bookSerrvice.addBook(book, files, file)) {
            ra.addFlashAttribute("msg", "Thêm thành công !");
        }else{
            ra.addFlashAttribute("msg", "Thêm thất bại !");
        }
        return "redirect:/admincp/book";
    }
    @RequestMapping(value = "book/{id}", method = RequestMethod.GET, produces="application/json")
    public String edit(ModelMap modelMap, @PathVariable("id") int id) {
        Book book = bookSerrvice.getById(id);
//        List<Picture> pictures = book.getPictures();
        modelMap.addAttribute("book",book);
//        modelMap.addAttribute("pictures",pictures);
        return "admin.book.edit";
    }
    @RequestMapping(value = "book/ajax_page", method = RequestMethod.POST,produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String page(@RequestParam("apage") int apage, HttpServletRequest request) {
        String data="";
        List<Book> books = bookSerrvice.getAllBook(apage);
        for (Book obj : books) {
            data+="<tr><td style='width:5%' actions center text-center no-sort>"+obj.getId()+"</td>"
                    +"<td>"+obj.getName()+"</td>"
                    +"<td>"+obj.getPrice()+"</td>"
                    +"<th>"+obj.getAuthor()+"</th>"
                    +"<td class='actions'>"
                    +"<a href='"+request.getContextPath()+"/admincp/book/"+obj.getId()+"' title='' style='padding: 5px;' class='on-default edit-row''><i class='fa fa-pencil'></i></a>"
                    +"<a href='"+request.getContextPath()+"/admincp/book/delete/"+obj.getId()+"' title='' style='padding: 5px;' class='on-default remove-row' onclick='return confirmAction()'><i class='fa fa-trash-o'></i></a>"
                    +"</td></tr>";
        }
        return data;
    }
    @RequestMapping(value = "book/add", method = RequestMethod.GET, produces="application/json")
    public String show() {
        return "admin.book.add";
    }
}