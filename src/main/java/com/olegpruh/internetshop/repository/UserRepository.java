package com.olegpruh.internetshop.repository;

import com.olegpruh.internetshop.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmailLike(String email);
}
