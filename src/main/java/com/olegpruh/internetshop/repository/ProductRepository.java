package com.olegpruh.internetshop.repository;

import com.olegpruh.internetshop.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    List<Product> findAllByTitleLike(String title);
}
