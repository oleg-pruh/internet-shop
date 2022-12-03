package com.olegpruh.internetshop.service.impl;

import com.olegpruh.internetshop.model.User;
import com.olegpruh.internetshop.repository.UserRepository;
import com.olegpruh.internetshop.service.UserService;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    private UserRepository repository;

    public UserServiceImpl(UserRepository repository) {
        this.repository = repository;
    }

    @Override
    public User add(User user) {
        return repository.save(user);
    }

    @Override
    public User findByEmail(String email) {
        return repository.findByEmail(email);
    }
}
