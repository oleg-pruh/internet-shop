package com.olegpruh.internetshop.service.impl;

import com.olegpruh.internetshop.model.User;
import com.olegpruh.internetshop.repository.UserRepository;
import com.olegpruh.internetshop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {
    private final UserRepository repository;

    @Autowired
    public UserServiceImpl(UserRepository repository) {
        this.repository = repository;
    }

    @Override
    public User save(User user) {
        return repository.save(user);
    }

    @Override
    public Optional<User> findByEmail(String email) {
        return Optional.ofNullable(repository.findByEmailLike(email));
    }
}
