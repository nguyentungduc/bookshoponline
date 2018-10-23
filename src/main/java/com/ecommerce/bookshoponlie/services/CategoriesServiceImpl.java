package com.ecommerce.bookshoponlie.services;

import com.ecommerce.bookshoponlie.models.Category;
import com.ecommerce.bookshoponlie.services.interfaces.CategoriesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Repository;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class CategoriesServiceImpl implements CategoriesService {
    @Autowired
    RestTemplate restTemplate = new RestTemplate();

    final String ROOT_URI = "https://api-book-shop-online.herokuapp.com/api/categories";

    public List<Category> getAllCategory(int page) {
        String URI = ROOT_URI + "/index?page="+page;
        ResponseEntity<Category[]> response = restTemplate.getForEntity(URI,Category[].class);
        return Arrays.asList(response.getBody());
    }

    public Category getById(int id) {
        String URI = ROOT_URI + "/" + id;
        System.out.println("URL: " + URI);
        ResponseEntity<Category> response = restTemplate.getForEntity(URI, Category.class);
        return response.getBody();
    }

    public boolean addCategory(Category category) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Accept", "application/json");
        headers.add("Content-Type", "application/json");
        RestTemplate restTemplate = new RestTemplate();
        HttpEntity<Category> requestBody = new HttpEntity<>(category, headers);
        String URL_CREATE_EMPLOYEE="https://api-book-shop-online.herokuapp.com/api/categories";
        ResponseEntity<Category> response = restTemplate.exchange(URL_CREATE_EMPLOYEE, HttpMethod.POST, requestBody, Category.class);
        if (response != null) {
            return true;
        }
        return false;
    }

    public boolean updateCategory(Category category) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Accept", "application/json");
        headers.add("Content-Type", "application/json");
        RestTemplate restTemplate = new RestTemplate();
        HttpEntity<Category> requestBody = new HttpEntity<>(category, headers);
        String URL_CREATE_EMPLOYEE="https://api-book-shop-online.herokuapp.com/api/categories";
        ResponseEntity<Category> response = restTemplate.exchange(URL_CREATE_EMPLOYEE, HttpMethod.POST, requestBody, Category.class);
        if (response != null) {
            return true;
        }
        return false;
    }

    public boolean deleteCategory(int id) {
        String URI = ROOT_URI + "/" + id;
        restTemplate.delete(URI);
        try {
            Category e = getById(id);
            return false;
        }catch (Exception e){
            return true;
        }
    }
    public int getTotalPage(){
        String URI = ROOT_URI + "/index/pages";
        ResponseEntity response = restTemplate.getForEntity(URI, String.class);
        System.out.println("response"+ response);
        int page=1;
        return page;
    }
}
