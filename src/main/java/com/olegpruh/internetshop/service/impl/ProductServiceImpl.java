package com.olegpruh.internetshop.service.impl;

import com.olegpruh.internetshop.model.Product;
import com.olegpruh.internetshop.repository.ProductRepository;
import com.olegpruh.internetshop.service.ProductService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    private ProductRepository repository;

    public ProductServiceImpl(ProductRepository repository) {
        this.repository = repository;
    }

    @Override
    public Product add(Product product) {
        return repository.save(product);
    }

    @Override
    public List<Product> getAll() {
        return repository.findAll();
    }

    @Override
    public List<Product> getAllBySearchQuery(String query) {
        return repository.findAllByTitleLike(query);
    }

    @Override
    public Product get(Long id) {
        return repository.findById(id).get();
    }
}

