package com.olegpruh.internetshop.service;

import com.olegpruh.internetshop.model.User;

public interface UserService {
    User add(User user);

    User findByEmail(String email);
}
