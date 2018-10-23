package com.ecommerce.bookshoponlie.controllers;
import com.ecommerce.bookshoponlie.models.Category;
import org.springframework.http.*;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;

public class test {
    public static void main(String[] args) {
        Category newEmployee = new Category(0, "Nguyen Tung Duc", "","");
        HttpHeaders headers = new HttpHeaders();
        headers.add("Accept", "application/json");
        headers.add("Content-Type", "application/json");
        RestTemplate restTemplate = new RestTemplate();
        // Dữ liệu đính kèm theo yêu cầu.
        HttpEntity<Category> requestBody = new HttpEntity<>(newEmployee, headers);
        String URL_CREATE_EMPLOYEE="https://api-book-shop-online.herokuapp.com/api/categories";
        // Gửi yêu cầu với phương thức POST.
        //Category e = restTemplate.postForObject(URL_CREATE_EMPLOYEE, requestBody, Category.class);
        ResponseEntity<Category> response = restTemplate.exchange(URL_CREATE_EMPLOYEE, HttpMethod.POST, requestBody, Category.class);

        if (response != null) {

            System.out.println("Employee created: ");
        } else {
            System.out.println("Something error!");
        }
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
