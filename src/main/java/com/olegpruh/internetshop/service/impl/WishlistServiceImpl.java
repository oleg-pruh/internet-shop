package com.olegpruh.internetshop.service.impl;

import com.olegpruh.internetshop.model.Product;
import com.olegpruh.internetshop.repository.WishlistRepository;
import com.olegpruh.internetshop.service.WishlistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WishlistServiceImpl implements WishlistService {
    private final WishlistRepository wishlistRepository;

    @Autowired
    public WishlistServiceImpl(WishlistRepository wishlistRepository) {
        this.wishlistRepository = wishlistRepository;
    }

    @Override
    public List<Product> findAll() {
        return wishlistRepository.findAll();
    }
}
