package com.ecommerce.bookshoponlie.services;

import com.ecommerce.bookshoponlie.models.Book;
import com.ecommerce.bookshoponlie.models.Publisher;
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
public class BookSerrviceImpl {
    final String ROOT_URI = "https://api-book-shop-online.herokuapp.com/api/";
    RestTemplate restTemplate = new RestTemplate();

    public List<Book> getAllBook(int page) {
        String URI = ROOT_URI+"books/index?page="+page;
        ResponseEntity<Book[]> response = restTemplate.getForEntity(URI,Book[].class);
        return Arrays.asList(response.getBody());
    }
//    public boolean addPublisher(Publisher publisher) {
//        HttpHeaders headers = new HttpHeaders();
//        headers.add("Accept", "application/json");
//        headers.add("Content-Type", "application/json");
//        RestTemplate restTemplate = new RestTemplate();
//        HttpEntity<Publisher> requestBody = new HttpEntity<>(publisher, headers);
//        String URL_CREATE_EMPLOYEE="https://api-book-shop-online.herokuapp.com/api/publishers";
//        ResponseEntity<Publisher> response = restTemplate.exchange(URL_CREATE_EMPLOYEE, HttpMethod.POST, requestBody, Publisher.class);
//        if (response != null) {
//            return true;
//        }
//        return false;
//    }

    public Book getById(int id) {
        String URI = ROOT_URI + "books/" + id;
        System.out.println("URL: " + URI);
        ResponseEntity<Book> response = restTemplate.getForEntity(URI, Book.class);
        return response.getBody();
    }

//    public boolean deleteObject(int id) {
//        String URI = ROOT_URI + "publishers/" + id;
//        restTemplate.delete(URI);
//        try {
//            Publisher e = getById(id);
//            return false;
//        }catch (Exception e){
//            return true;
//        }
//    }
//    public boolean updatePublisher(Publisher publisher) {
//        HttpClient httpClient = HttpClientBuilder.create().build();
//        restTemplate.setRequestFactory(new HttpComponentsClientHttpRequestFactory(httpClient));
//        List<MediaType> acceptTypes = new ArrayList<MediaType>();
//        acceptTypes.add(MediaType.APPLICATION_JSON_UTF8);
//        HttpHeaders reqHeaders = new HttpHeaders();
//        reqHeaders.setContentType(MediaType.APPLICATION_JSON_UTF8);
//        reqHeaders.setAccept(acceptTypes);
//        String URI=ROOT_URI+"publishers/"+publisher.getId();
//        HttpEntity<Publisher> entity = new HttpEntity<>(publisher, reqHeaders);
//        ResponseEntity<Publisher> response = restTemplate.exchange(URI, HttpMethod.PATCH, entity, Publisher.class);
//        if (response != null) {
//            return true;
//        }
//        return false;
//    }

}


