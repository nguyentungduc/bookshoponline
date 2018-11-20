package com.ecommerce.bookshoponlie.services;

import com.ecommerce.bookshoponlie.models.*;
import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.*;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
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

    public int getTotalPage(){
        String URI = ROOT_URI + "/books/index/pages";
        ResponseEntity response = restTemplate.getForEntity(URI, String.class);
        System.out.println("response: "+ response.toString());
        int page=1;
        try{
            page=Integer.parseInt((String) response.getBody());
            return page;
        }catch (Exception e){
            return 1;
        }
    }
    public boolean addBook(Book book) {
        String URL_CREATE_EMPLOYEE="https://api-book-shop-online.herokuapp.com/api/books";
        MultiValueMap<String, Object> formData = new LinkedMultiValueMap<String, Object>();
        RestTemplate restTemplate = new RestTemplate();
        formData.add("booksEntity",book);
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.MULTIPART_FORM_DATA);
        headers.add("Content-Type", "application/x-www-form-urlencoded");
        HttpEntity<MultiValueMap<String, Object>> requestEntity = new HttpEntity<>(formData, headers);
        try{
            ResponseEntity<String> response = restTemplate.exchange(URL_CREATE_EMPLOYEE,
                    HttpMethod.POST, requestEntity, String.class);
            System.out.println("response status: " + response.getStatusCode());
            System.out.println("response body: " + response.getBody());
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public Book getById(int id) {
        String URI = ROOT_URI + "books/" + id;
        System.out.println("URL: " + URI);
        ResponseEntity<Book> response = restTemplate.getForEntity(URI, Book.class);
        return response.getBody();
    }

    public boolean deleteObject(int id) {
        String URI = ROOT_URI + "books/" + id;
        restTemplate.delete(URI);
        try {
            Book e = getById(id);
            return false;
        }catch (Exception e){
            return true;
        }
    }
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


