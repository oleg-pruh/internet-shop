package com.olegpruh.internetshop.service.impl;

import com.olegpruh.internetshop.model.Product;
import com.olegpruh.internetshop.repository.CartRepository;
import com.olegpruh.internetshop.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartServiceImpl implements CartService {
    private final CartRepository repository;

    @Autowired
    public CartServiceImpl(CartRepository repository) {
        this.repository = repository;
    }

    @Override
    public List<Product> findAll() {
        return repository.findAll();
    }
}
