package com.ecommerce.bookshoponlie.services;

import com.ecommerce.bookshoponlie.models.Publisher;
import com.ecommerce.bookshoponlie.models.User;
import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.springframework.http.*;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class UserServiceImpl {
    final String ROOT_URI = "https://api-book-shop-online.herokuapp.com/api/";
    RestTemplate restTemplate = new RestTemplate();

    public List<User> getAllUser(int page) {
        String URI = ROOT_URI+"groups/index";
        ResponseEntity<User[]> response = restTemplate.getForEntity(URI,User[].class);
        return Arrays.asList(response.getBody());
    }
    public boolean updateUser(User user) {
        HttpClient httpClient = HttpClientBuilder.create().build();
        restTemplate.setRequestFactory(new HttpComponentsClientHttpRequestFactory(httpClient));
        List<MediaType> acceptTypes = new ArrayList<MediaType>();
        acceptTypes.add(MediaType.APPLICATION_JSON_UTF8);
        HttpHeaders reqHeaders = new HttpHeaders();
        reqHeaders.setContentType(MediaType.APPLICATION_JSON_UTF8);
        reqHeaders.setAccept(acceptTypes);
        String URI=ROOT_URI+"groups/"+user.getId();
        HttpEntity<User> entity = new HttpEntity<>(user, reqHeaders);
        ResponseEntity<User> response = restTemplate.exchange(URI, HttpMethod.PATCH, entity, User.class);
        if (response != null) {
            return true;
        }
        return false;
    }
    public boolean addUser(User user) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Accept", "application/json");
        headers.add("Content-Type", "application/json");
        RestTemplate restTemplate = new RestTemplate();
        HttpEntity<User> requestBody = new HttpEntity<>(user, headers);
        String URL_CREATE_EMPLOYEE="https://api-book-shop-online.herokuapp.com/api/groups";
        ResponseEntity<User> response = restTemplate.exchange(URL_CREATE_EMPLOYEE, HttpMethod.POST, requestBody, User.class);
        if (response != null) {
            return true;
        }
        return false;
    }
    public User getById(int id) {
        String URI = ROOT_URI + "groups/" + id;
        System.out.println("URL: " + URI);
        ResponseEntity<User> response = restTemplate.getForEntity(URI, User.class);
        return response.getBody();
    }
    public boolean updatePublisher(User user) {
        HttpClient httpClient = HttpClientBuilder.create().build();
        restTemplate.setRequestFactory(new HttpComponentsClientHttpRequestFactory(httpClient));
        List<MediaType> acceptTypes = new ArrayList<MediaType>();
        acceptTypes.add(MediaType.APPLICATION_JSON_UTF8);
        HttpHeaders reqHeaders = new HttpHeaders();
        reqHeaders.setContentType(MediaType.APPLICATION_JSON_UTF8);
        reqHeaders.setAccept(acceptTypes);
        String URI=ROOT_URI+"groups/"+user.getId();
        HttpEntity<User> entity = new HttpEntity<>(user, reqHeaders);
        ResponseEntity<User> response = restTemplate.exchange(URI, HttpMethod.PATCH, entity, User.class);
        if (response != null) {
            return true;
        }
        return false;
    }
}


