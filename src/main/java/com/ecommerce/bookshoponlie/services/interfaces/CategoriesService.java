package com.ecommerce.bookshoponlie.services.interfaces;

import com.ecommerce.bookshoponlie.models.Category;
import org.springframework.http.HttpStatus;

import java.util.List;

public interface CategoriesService {
    List<Category> getAllPerson(int page);
    Category getById(Long id);
    HttpStatus addPerson(Category category);
    void updatePerson(Category category);
    void deletePerson(Long id);
}
