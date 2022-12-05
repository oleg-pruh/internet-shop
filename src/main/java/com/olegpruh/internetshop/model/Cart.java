package com.olegpruh.internetshop.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

import java.util.List;

@Entity
public class Cart {
    @Id
    @GeneratedValue
    private Long id;
    private int quantity;
    @OneToMany
    private List<Product> products;
}
