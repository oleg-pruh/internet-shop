package com.olegpruh.internetshop.repository;

import com.olegpruh.internetshop.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WishlistRepository extends JpaRepository<Product, Long> {
}
