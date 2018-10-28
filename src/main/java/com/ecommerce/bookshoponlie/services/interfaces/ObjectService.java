package com.ecommerce.bookshoponlie.services.interfaces;

import com.ecommerce.bookshoponlie.models.Publisher;

import java.util.List;
import java.util.Objects;

public interface ObjectService {
    List<Publisher> getAllObject(int page);
    Publisher getById(int id);
    boolean addObject(Objects object);

    boolean addObject(Publisher object);

    boolean updateObject(Objects object);
    boolean deleteObject(int id);
    int getTotalPage();
}
