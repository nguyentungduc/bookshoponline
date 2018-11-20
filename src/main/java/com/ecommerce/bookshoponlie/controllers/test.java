package com.ecommerce.bookshoponlie.controllers;
import com.ecommerce.bookshoponlie.models.*;
import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.*;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class test {
    public static void main(String[] args) {
        Book book = new Book();
        book.setName("nguyen 12âfaưffâff423");
        book.setEnable(1);
        book.setPrice(70.0);
        book.setPriceSale(0.0);
        book.setCurrency("dong");
        book.setQuantity(0);
        book.setAuthor("Nguy?n Khoa H?ng Th…nh, Ho…ng Th—y Minh Anh, Nguy?n Qu?nh Nhu");
        book.setSummary("Cong nghe so");
        book.setCodeBook("i24f5ff6sv4av");
        book.setEdition(3);
        BookDetail bookDetail = new BookDetail();
        bookDetail.setLanguage(new Language(1));
        bookDetail.setPageNumber(292);
        bookDetail.setChapterNumber(12);
        bookDetail.setPublishingYear(2018);
        bookDetail.setSize("13 x 12 cm");
        bookDetail.setCoverStyle("Bia mem");
        book.setPublisher(new Publisher(2));
        List<Category> list = new ArrayList<>();
        list.add(new Category(2));
        book.setCategories(list);
        book.setBookDetail(bookDetail);
        String URL_CREATE_EMPLOYEE="https://api-book-shop-online.herokuapp.com/api/books";
        MultiValueMap<String, Object> formData = new LinkedMultiValueMap<String, Object>();
        RestTemplate restTemplate = new RestTemplate();
        formData.add("booksEntity",book);
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.MULTIPART_FORM_DATA);
//        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
//        headers.add("Accept", "application/json");
        headers.add("Content-Type", "application/x-www-form-urlencoded");
        HttpEntity<MultiValueMap<String, Object>> requestEntity = new HttpEntity<>(formData, headers);
        try{
            ResponseEntity<String> response = restTemplate.exchange(URL_CREATE_EMPLOYEE,
                    HttpMethod.POST, requestEntity, String.class);
            System.out.println("response status: " + response.getStatusCode());
            System.out.println("response body: " + response.getBody());
        }catch (Exception e){
            e.printStackTrace();
        }


//        HttpHeaders headers = new HttpHeaders();
//        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
//
//        MultiValueMap<String, Book> map= new LinkedMultiValueMap<String, Book>();
//        map.add("booksEntity", book);
//
//        HttpEntity<MultiValueMap<String, Book>> request = new HttpEntity<MultiValueMap<String, Book>>(map, headers);
//
//        ResponseEntity<String> response = restTemplate.postForEntity( URL_CREATE_EMPLOYEE, request , String.class );

//            Publisher publisher = new Publisher(6,"ABC Đồng","102 Ông Ích Khiên, TP Đà Nẵng, Việt Nam","0511381233","","");
//            RestTemplate restTemplate = new RestTemplate();
//            HttpClient httpClient = HttpClientBuilder.create().build();
//            restTemplate.setRequestFactory(new HttpComponentsClientHttpRequestFactory(httpClient));
//            List<MediaType> acceptTypes = new ArrayList<MediaType>();
//            acceptTypes.add(MediaType.APPLICATION_JSON_UTF8);
//            HttpHeaders reqHeaders = new HttpHeaders();
//            reqHeaders.setContentType(MediaType.APPLICATION_JSON_UTF8);
//            reqHeaders.setAccept(acceptTypes);
//            String URL_CREATE_EMPLOYEE="https://api-book-shop-online.herokuapp.com/api/publishers/"+publisher.getId();
//            HttpEntity<Publisher> entity = new HttpEntity<>(publisher, reqHeaders);
//            ResponseEntity<Publisher> response = restTemplate.exchange(URL_CREATE_EMPLOYEE, HttpMethod.PATCH, entity, Publisher.class);
//            if (response != null) {
//                System.out.println("thanh cong");
//            }
//            System.out.println("that bai !");;

//        String URL_EMPLOYEES = "https://api-book-shop-online.herokuapp.com/api/books/17";
//        RestTemplate restTemplate = new RestTemplate();
//        ResponseEntity<Book> response = restTemplate.getForEntity(URL_EMPLOYEES, Book.class);
//        Book book = response.getBody();
//        if (book != null) {
//            System.out.println(book.getPictures());
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
