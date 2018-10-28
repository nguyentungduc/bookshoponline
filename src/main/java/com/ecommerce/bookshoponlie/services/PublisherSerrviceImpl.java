package com.ecommerce.bookshoponlie.services;

import com.ecommerce.bookshoponlie.models.Category;
import com.ecommerce.bookshoponlie.models.Publisher;
import com.ecommerce.bookshoponlie.services.interfaces.ObjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;

import java.util.*;

@Repository
public class PublisherSerrviceImpl implements ObjectService {
    final String ROOT_URI = "https://api-book-shop-online.herokuapp.com/api/categories";
    @Autowired
    RestTemplate restTemplate = new RestTemplate();

    @Override
    public List<Publisher> getAllObject(int page) {
        String URI = ROOT_URI + "/index?page="+page;
        ResponseEntity<Publisher> response = restTemplate.getForEntity(URI, Publisher.class);
        return Arrays.asList(response.getBody());
    }

    @Override
    public Publisher getById(int id) {
        String URI = ROOT_URI + "/" + id;
        System.out.println("URL: " + URI);
        ResponseEntity<Publisher> response = restTemplate.getForEntity(URI, Publisher.class);
        return response.getBody();
    }

    @Override
    public boolean addObject(Objects object) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Accept", "application/json");
        headers.add("Content-Type", "application/json");
        RestTemplate restTemplate = new RestTemplate();
        HttpEntity<Objects> requestBody = new HttpEntity<>(object, headers);
        String URL_CREATE_EMPLOYEE="https://api-book-shop-online.herokuapp.com/api/categories";
        ResponseEntity<Publisher> response = restTemplate.exchange(URL_CREATE_EMPLOYEE, HttpMethod.POST, requestBody, Publisher.class);
        if (response != null) {
            return true;
        }
        return false;
    }

    @Override
    public boolean addObject(Publisher object) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Accept", "application/json");
        headers.add("Content-Type", "application/json");
        RestTemplate restTemplate = new RestTemplate();
        HttpEntity<Publisher> requestBody = new HttpEntity<>(object, headers);
        String URL_CREATE_EMPLOYEE="https://api-book-shop-online.herokuapp.com/api/categories";
        ResponseEntity<Publisher> response = restTemplate.exchange(URL_CREATE_EMPLOYEE, HttpMethod.POST, requestBody, Publisher.class);
        if (response != null) {
            return true;
        }
        return false;
    }

    @Override
    public boolean updateObject(Objects object) {
        return false;
    }

    @Override
    public boolean deleteObject(int id) {
        return false;
    }

    @Override
    public int getTotalPage() {
        return 0;
    }
}


