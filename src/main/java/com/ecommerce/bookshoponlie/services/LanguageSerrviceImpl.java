package com.ecommerce.bookshoponlie.services;

import com.ecommerce.bookshoponlie.models.Language;
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
public class LanguageSerrviceImpl {
    final String ROOT_URI = "https://api-book-shop-online.herokuapp.com/api/";
    RestTemplate restTemplate = new RestTemplate();

    public List<Language> getAllPublisher(int page) {
        String URI = ROOT_URI+"languages/index";
        ResponseEntity<Language[]> response = restTemplate.getForEntity(URI,Language[].class);
        return Arrays.asList(response.getBody());
    }
    public boolean addLanguage(Language language) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Accept", "application/json");
        headers.add("Content-Type", "application/json");
        HttpEntity<Language> requestBody = new HttpEntity<>(language, headers);
        String URL_CREATE_EMPLOYEE="https://api-book-shop-online.herokuapp.com/api/languages";
        ResponseEntity<Language> response = restTemplate.exchange(URL_CREATE_EMPLOYEE, HttpMethod.POST, requestBody, Language.class);
        if (response != null) {
            return true;
        }
        return false;
    }

    public Language getById(int id) {
        String URI = ROOT_URI + "languages/" + id;
        System.out.println("URL: " + URI);
        ResponseEntity<Language> response = restTemplate.getForEntity(URI, Language.class);
        return response.getBody();
    }

    public boolean deleteLanguage(int id) {
        String URI = ROOT_URI + "languages/" + id;
        restTemplate.delete(URI);
        try {
            Language e = getById(id);
            return false;
        }catch (Exception e){
            return true;
        }
    }
    public boolean updateLanguage(Language language) {
        HttpClient httpClient = HttpClientBuilder.create().build();
        restTemplate.setRequestFactory(new HttpComponentsClientHttpRequestFactory(httpClient));
        List<MediaType> acceptTypes = new ArrayList<>();
        acceptTypes.add(MediaType.APPLICATION_JSON_UTF8);
        HttpHeaders reqHeaders = new HttpHeaders();
        reqHeaders.setContentType(MediaType.APPLICATION_JSON_UTF8);
        reqHeaders.setAccept(acceptTypes);
        String URI=ROOT_URI+"languages/"+language.getId();
        HttpEntity<Language> entity = new HttpEntity<>(language, reqHeaders);
        ResponseEntity<Language> response = restTemplate.exchange(URI, HttpMethod.PATCH, entity, Language.class);
        if (response != null) {
            return true;
        }
        return false;
    }

}


