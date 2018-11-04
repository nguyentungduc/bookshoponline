package com.ecommerce.bookshoponlie.services;

import com.ecommerce.bookshoponlie.models.Publisher;
import com.ecommerce.bookshoponlie.models.Supplier;
import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.springframework.http.*;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class SupplierServiceImpl {
    final String ROOT_URI = "https://api-book-shop-online.herokuapp.com/api/";
    RestTemplate restTemplate = new RestTemplate();

    public List<Supplier> getAllSupplier(int page) {
        String URI = ROOT_URI+"suppliers/index";
        System.out.println("URI:" + URI);
        ResponseEntity<Supplier[]> response = restTemplate.getForEntity(URI, Supplier[].class);
        return Arrays.asList(response.getBody());
    }

    public boolean addSupplier(Supplier supplier) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Accept", "application/json");
        headers.add("Content-Type", "application/json");
        RestTemplate restTemplate = new RestTemplate();
        HttpEntity<Supplier> requestBody = new HttpEntity<>(supplier, headers);
        String URL_CREATE_EMPLOYEE="https://api-book-shop-online.herokuapp.com/api/suppliers";
        ResponseEntity<Supplier> response = restTemplate.exchange(URL_CREATE_EMPLOYEE, HttpMethod.POST, requestBody, Supplier.class);
        if (response != null) {
            return true;
        }
        return false;
    }

    public Supplier getById(int id) {
        String URI = ROOT_URI + "suppliers/" + id;
        System.out.println("URL: " + URI);
        ResponseEntity<Supplier> response = restTemplate.getForEntity(URI, Supplier.class);
        return response.getBody();
    }

    public boolean deleteSupplier(int id) {
        String URI = ROOT_URI + "suppliers/" + id;
        restTemplate.delete(URI);
        try {
            Supplier e = getById(id);
            return false;
        }catch (Exception e){
            return true;
        }
    }
    public boolean updateSupplier(Supplier supplier) {
        HttpClient httpClient = HttpClientBuilder.create().build();
        restTemplate.setRequestFactory(new HttpComponentsClientHttpRequestFactory(httpClient));
        List<MediaType> acceptTypes = new ArrayList<MediaType>();
        acceptTypes.add(MediaType.APPLICATION_JSON_UTF8);
        HttpHeaders reqHeaders = new HttpHeaders();
        reqHeaders.setContentType(MediaType.APPLICATION_JSON_UTF8);
        reqHeaders.setAccept(acceptTypes);
        String URI=ROOT_URI+"suppliers/"+supplier.getId();
        HttpEntity<Supplier> entity = new HttpEntity<>(supplier, reqHeaders);
        ResponseEntity<Supplier> response = restTemplate.exchange(URI, HttpMethod.PATCH, entity, Supplier.class);
        if (response != null) {
            return true;
        }
        return false;
    }
}
