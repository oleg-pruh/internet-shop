package com.olegpruh.internetshop.service;

import com.olegpruh.internetshop.model.Product;

import java.util.List;

public interface WishlistService {
    List<Product> findAll();
}
