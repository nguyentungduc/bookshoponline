package com.ecommerce.bookshoponlie.controllers;
import com.ecommerce.bookshoponlie.models.Category;
import com.ecommerce.bookshoponlie.models.Publisher;
import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.springframework.http.*;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class test {
    public static void main(String[] args) {
            Publisher publisher = new Publisher(6,"ABC Đồng","102 Ông Ích Khiên, TP Đà Nẵng, Việt Nam","0511381233","","");
            RestTemplate restTemplate = new RestTemplate();
            HttpClient httpClient = HttpClientBuilder.create().build();
            restTemplate.setRequestFactory(new HttpComponentsClientHttpRequestFactory(httpClient));
            List<MediaType> acceptTypes = new ArrayList<MediaType>();
            acceptTypes.add(MediaType.APPLICATION_JSON_UTF8);
            HttpHeaders reqHeaders = new HttpHeaders();
            reqHeaders.setContentType(MediaType.APPLICATION_JSON_UTF8);
            reqHeaders.setAccept(acceptTypes);
            String URL_CREATE_EMPLOYEE="https://api-book-shop-online.herokuapp.com/api/publishers/"+publisher.getId();
            HttpEntity<Publisher> entity = new HttpEntity<>(publisher, reqHeaders);
            ResponseEntity<Publisher> response = restTemplate.exchange(URL_CREATE_EMPLOYEE, HttpMethod.PATCH, entity, Publisher.class);
            if (response != null) {
                System.out.println("thanh cong");
            }
            System.out.println("that bai !");;

//        String URL_EMPLOYEES = "https://api-book-shop-online.herokuapp.com/api/publishers/index?page=1";
//        RestTemplate restTemplate = new RestTemplate();
//        Publisher[] list = restTemplate.getForObject(URL_EMPLOYEES, Publisher[].class);
//        if (list != null) {
//            for (Publisher e : list) {
//                System.out.println("Employee: " + e.getId() + " - " + e.getName());
//            }
//        }
//        RestTemplate restTemplate = new RestTemplate();
//        String URL_EMPLOYEES = "https://api-book-shop-online.herokuapp.com/api/publishers/index?page=1";
//        ResponseEntity<Publisher[]> response = restTemplate.getForEntity(URL_EMPLOYEES,Publisher[].class);
//        List<Publisher> publishers = Arrays.asList(response.getBody());
//        for (Publisher e : publishers) {
//            System.out.println("Employee: " + e.getId() + " - " + e.getName());
//        }
    }
    public static void getWithHeaderExample(){
        // HttpHeaders
        HttpHeaders headers = new HttpHeaders();
        headers.setAccept(Arrays.asList(new MediaType[] { MediaType.APPLICATION_JSON }));
        // Request to return JSON format
        headers.setContentType(MediaType.APPLICATION_JSON);
        headers.set("my_other_key", "my_other_value");

        // HttpEntity<String>: To get result as String.
        HttpEntity<String> entity = new HttpEntity<String>(headers);

        // RestTemplate
        RestTemplate restTemplate = new RestTemplate();

        // Send request with GET method, and Headers.
        ResponseEntity<String> response = restTemplate.exchange("", //
                HttpMethod.GET, entity, String.class);
        String result = response.getBody();
        System.out.println(result);
    }
}
