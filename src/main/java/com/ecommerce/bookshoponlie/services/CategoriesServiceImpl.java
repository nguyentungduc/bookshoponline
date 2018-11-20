package com.ecommerce.bookshoponlie.services;

import com.ecommerce.bookshoponlie.models.Category;
import com.ecommerce.bookshoponlie.models.Language;
import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.*;

@Service
public class CategoriesServiceImpl{
    RestTemplate restTemplate = new RestTemplate();

    final String ROOT_URI = "https://api-book-shop-online.herokuapp.com/api/categories";

    public List<Category> getAllObject(int page) {
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

    public boolean addObject(Category category) {
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

    public boolean updateObject(Category category) {
        RestTemplate restTemplate = new RestTemplate();
        HttpClient httpClient = HttpClientBuilder.create().build();
        restTemplate.setRequestFactory(new HttpComponentsClientHttpRequestFactory(httpClient));
        List<MediaType> acceptTypes = new ArrayList<MediaType>();
        acceptTypes.add(MediaType.APPLICATION_JSON_UTF8);
        HttpHeaders reqHeaders = new HttpHeaders();
        reqHeaders.setContentType(MediaType.APPLICATION_JSON_UTF8);
        reqHeaders.setAccept(acceptTypes);
        String URL_CREATE_EMPLOYEE="https://api-book-shop-online.herokuapp.com/api/categories/"+category.getId();
        HttpEntity<Category> entity = new HttpEntity<>(category, reqHeaders);
        ResponseEntity<Category> response = restTemplate.exchange(URL_CREATE_EMPLOYEE, HttpMethod.PATCH, entity, Category.class);
        if (response != null) {
            return true;
        }
        return false;
    }

    public boolean deleteObject(int id) {
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
        System.out.println("response"+ response.toString());
        int page=1;
        try{
            page=Integer.parseInt((String) response.getBody());
            return page;
        }catch (Exception e){
            return 1;
        }
    }

    public List<Category> getAllCategoryAll() {
        String URI = "https://api-book-shop-online.herokuapp.com/api/categories/index";
        ResponseEntity<Category[]> response = restTemplate.getForEntity(URI,Category[].class);
        return Arrays.asList(response.getBody());
    }
}
