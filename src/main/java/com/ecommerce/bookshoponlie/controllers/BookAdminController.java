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
    LanguageSerrviceImpl languageService = new LanguageSerrviceImpl();
    CategoriesServiceImpl categoriesService = new CategoriesServiceImpl();
    PublisherSerrviceImpl publisherSerrvice = new PublisherSerrviceImpl();
    public String[] actives = {"Inactive", "Active"};

    @ModelAttribute
    public void addCommonObject(ModelMap model) {
        model.addAttribute("totalPage", bookSerrvice.getTotalPage());
        model.addAttribute("languageNames", languageService.getLanguageAll());
        model.addAttribute("categoryNames", categoriesService.getAllCategoryAll());
        model.addAttribute("publisherNames", publisherSerrvice.getAllpublisher());
        model.addAttribute("actives", actives);
    }

    @RequestMapping(value = "book", method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        List<Book> books = bookSerrvice.getAllBook(1);
        modelMap.addAttribute("books", books);
        return "admin.book";
    }

    @RequestMapping(value = "book/delete/{id}", method = RequestMethod.GET, produces = "application/json")
    public String delete(RedirectAttributes ra, @PathVariable("id") int id) {
        System.out.println("ID: " + id);
        if (bookSerrvice.deleteObject(id)) {
            ra.addFlashAttribute("msg", "Xóa thành công !");
        } else {
            ra.addFlashAttribute("msg", "Xóa thành công !");
        }
        return "redirect:/admincp/book";
    }

    @RequestMapping(value = "book/edit", method = RequestMethod.POST, produces = "application/json")
    public String edit(@ModelAttribute("book") Book book, @RequestParam(value = "files", required = false) MultipartFile[] files, ModelMap modelMap,
                       @RequestParam(value = "category_id[]", required = false) Integer[] category_id,
                       @RequestParam(value = "category_id_old[]", required = false) Integer[] category_id_old,
                       @RequestParam("language_id") Integer language_id,
                       @RequestParam("publisher_id") Integer publisher_id,
                       @RequestParam("detail_id") Integer detail_id,
                       @RequestParam("book_id") Integer book_id,
                       @ModelAttribute("detail") BookDetail detail,
                       @ModelAttribute("cover_picture_id") int cover_picture_id,
                       @RequestParam(value = "pid[]", required = false) Integer[] pid,
                       @RequestParam(value = "file", required = false) MultipartFile file,
                       RedirectAttributes ra) {
        System.out.println("file nay bang null:" + file);
        List<Category> listCat = new ArrayList<Category>();
        if (category_id != null && category_id.length > 0) {
            for (int i = 0; i < category_id.length; i++) {
                Category category = new Category(category_id[i]);
                listCat.add(category);
                System.out.println(category.toString());
            }
        } else {
            for (int i = 0; i < category_id_old.length; i++) {
                Category category = new Category(category_id_old[i]);
                listCat.add(category);
                System.out.println(category.toString());
            }
        }
        Picture coverPicture = new Picture();
        coverPicture.setId(cover_picture_id);
        coverPicture.setType(1);
        List<Picture> listPic = new ArrayList<Picture>();
        if (pid != null) {
            for (int i = 0; i < pid.length; i++) {
                Picture picture = new Picture(pid[i]);
                listPic.add(picture);
                System.out.println(picture.toString());
            }
        }
        book.setCategories(listCat);
        Language objLanguage = new Language(language_id);
        detail.setLanguage(objLanguage);
        detail.setId(detail_id);
        book.setBookDetail(detail);
        book.setPublisher(new Publisher(publisher_id));
        book.setId(book_id);
        for (Picture picture : listPic) {
            System.out.println("aaaaaaaa" + picture.toString());
        }
        System.out.println(book.toString());
        try {
            if (bookSerrvice.updateBook(book, files, file, coverPicture, listPic)) {
                ra.addFlashAttribute("msg", "Sửa thành công !");
            } else {
                ra.addFlashAttribute("msg", "Sửa thất bại !");
            }
        } catch (Exception e) {
            ra.addFlashAttribute("msg", "Sửa thất bại !");
            e.printStackTrace();
        }
        return "redirect:/admincp/book";
    }

    @RequestMapping(value = "book/add", method = RequestMethod.POST, produces = "application/json")
    public String add(@RequestParam("file") MultipartFile file,
                      @RequestParam("files") MultipartFile[] files,
                      @RequestParam("category_id[]") String[] category_id,
                      @RequestParam("language_id") Integer language_id,
                      @RequestParam("publisher_id") Integer publisher_id,
                      @ModelAttribute("book") Book book,
                      @ModelAttribute("detail") BookDetail detail,
                      RedirectAttributes ra) {
        List<Category> list = new ArrayList<Category>();
        for (int i = 0; i < category_id.length; i++) {
            Integer ic_cat = Integer.parseInt(category_id[i]);
            Category objCategory = new Category(ic_cat);
            list.add(objCategory);
        }
        Language objLanguage = new Language(language_id);
        detail.setLanguage(objLanguage);
        book.setBookDetail(detail);
        book.setPublisher(new Publisher(publisher_id));
        book.setCategories(list);
        System.out.println(book.toString());
        if (bookSerrvice.addBook(book, files, file)) {
            ra.addFlashAttribute("msg", "Thêm thành công !");
        } else {
            ra.addFlashAttribute("msg", "Thêm thất bại !");
        }
        return "redirect:/admincp/book";
    }

    @RequestMapping(value = "book/{id}", method = RequestMethod.GET, produces = "application/json")
    public String edit(ModelMap modelMap, @PathVariable("id") int id) {
        Book book = bookSerrvice.getById(id);
        List<Picture> pictures = book.getPictures();
        List<Category> categories = book.getCategories();
        BookDetail bookDetail = book.getBookDetail();
        Publisher publisher = new Publisher();
        publisher = book.getPublisher();
        Language language = new Language();
        language = bookDetail.getLanguage();
        Picture coverPicture = new Picture(1);
        for (Picture obj : pictures) {
            if (obj.getType() == 1) {
                coverPicture = obj;
                pictures.remove(obj);
                break;
            }
        }
        modelMap.addAttribute("language", language);
        modelMap.addAttribute("publisher", publisher);
        modelMap.addAttribute("bookDetail", bookDetail);
        modelMap.addAttribute("categories", categories);
        modelMap.addAttribute("book", book);
        modelMap.addAttribute("pictures", pictures);
        modelMap.addAttribute("coverPicture", coverPicture);
        return "admin.book.edit";
    }

    @RequestMapping(value = "book/ajax_page", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String page(@RequestParam("apage") int apage, HttpServletRequest request) {
        String data = "";
        List<Book> books = bookSerrvice.getAllBook(apage);
        for (Book obj : books) {
            data += "<tr><td style='width:5%' actions center text-center no-sort>" + obj.getId() + "</td>"
                    + "<td>" + obj.getName() + "</td>"
                    + "<td>" + obj.getPrice() + "</td>"
                    + "<th>" + obj.getAuthor() + "</th>"
                    + "<td class='actions'>"
                    + "<a href='" + request.getContextPath() + "/admincp/book/" + obj.getId() + "' title='' style='padding: 5px;' class='on-default edit-row''><i class='fa fa-pencil'></i></a>"
                    + "<a href='" + request.getContextPath() + "/admincp/book/delete/" + obj.getId() + "' title='' style='padding: 5px;' class='on-default remove-row' onclick='return confirmAction()'><i class='fa fa-trash-o'></i></a>"
                    + "</td></tr>";
        }
        return data;
    }

    @RequestMapping(value = "book/add", method = RequestMethod.GET, produces = "application/json")
    public String show() {
        return "admin.book.add";
    }
}