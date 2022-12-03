package com.olegpruh.internetshop.service;

import com.olegpruh.internetshop.model.Product;

import java.util.List;

public interface ProductService {
    Product add(Product product);

    List<Product> getAll();

    List<Product> getAllBySearchQuery(String query);

    Product get(Long id);
}
