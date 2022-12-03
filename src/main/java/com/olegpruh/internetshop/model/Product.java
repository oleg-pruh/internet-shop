package com.olegpruh.internetshop.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "products")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
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