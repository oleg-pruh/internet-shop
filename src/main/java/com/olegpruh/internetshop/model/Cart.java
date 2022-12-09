package com.olegpruh.internetshop.model;

import javax.persistence.*;

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
