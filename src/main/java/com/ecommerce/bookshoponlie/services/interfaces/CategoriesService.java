package com.ecommerce.bookshoponlie.services.interfaces;

import com.ecommerce.bookshoponlie.models.Category;
import org.springframework.http.HttpStatus;

import java.util.List;

public interface CategoriesService {
    List<Category> getAllCategory(int page);
    Category getById(int id);
    boolean addCategory(Category category);
    boolean updateCategory(Category category);
    boolean deleteCategory(int id);
    int getTotalPage();
}
