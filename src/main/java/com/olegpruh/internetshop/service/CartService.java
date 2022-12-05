package com.olegpruh.internetshop.service;

import com.olegpruh.internetshop.model.Product;

import java.util.List;

public interface CartService {
    List<Product> findAll();
}
