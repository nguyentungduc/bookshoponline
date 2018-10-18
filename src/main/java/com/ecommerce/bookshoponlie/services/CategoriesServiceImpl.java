package com.ecommerce.bookshoponlie.services;

import com.ecommerce.bookshoponlie.models.Category;
import com.ecommerce.bookshoponlie.services.interfaces.CategoriesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;
import java.util.List;
@Repository
public class CategoriesServiceImpl implements CategoriesService {
    @Autowired
    RestTemplate restTemplate = new RestTemplate();

    final String ROOT_URI = "https://api-book-shop-online.herokuapp.com/api/categories/";

    public List<Category> getAllPerson(int page) {
        String URI = ROOT_URI + "index?page="+page;
        System.out.println(URI);
        ResponseEntity<Category[]> response = restTemplate.getForEntity(URI,Category[].class);
        return Arrays.asList(response.getBody());
    }

    public Category getById(Long id) {
        ResponseEntity<Category> response = restTemplate.getForEntity(ROOT_URI + "/"+id, Category.class);
        return response.getBody();
    }

    public HttpStatus addPerson(Category person) {
        ResponseEntity<HttpStatus> response = restTemplate.postForEntity(ROOT_URI, person, HttpStatus.class);
        return response.getBody();
    }

    public void updatePerson(Category category) {
        restTemplate.put(ROOT_URI, category);
    }

    public void deletePerson(Long id) {
        restTemplate.delete(ROOT_URI + id);
    }
}
