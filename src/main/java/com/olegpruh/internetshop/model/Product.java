package com.olegpruh.internetshop.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Entity
@Table(name = "products")
@Data
@NoArgsConstructor
public class Product {
    @Id
    @GeneratedValue
    private Long id;
    private String title;
    private BigDecimal price;
    private String image;
    @Column(columnDefinition="TEXT")
    private String description;
    @Column(unique = true)
    private String code;
    private int stock_quantity;

    public Product(String title, BigDecimal price, String image, String description, String code, int stock_quantity) {
        this.title = title;
        this.price = price;
        this.image = image;
        this.description = description;
        this.code = code;
        this.stock_quantity = stock_quantity;
    }
}