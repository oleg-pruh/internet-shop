package com.olegpruh.internetshop.security;

import com.olegpruh.internetshop.model.User;
import com.olegpruh.internetshop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CustomUserDetailsService implements UserDetailsService {
    private final UserService userService;

    public CustomUserDetailsService(UserService userService) {
        this.userService = userService;
    }

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        Optional<User> userOptional = userService.findByEmail(email);

        UserBuilder builder;
        if (userOptional.isPresent()) {
            builder = org.springframework.security.core.userdetails.User.withUsername(email);
            builder.password(userOptional.get().getPassword());
            return builder.build();
        }
        throw new UsernameNotFoundException("User not found.");
    }
}
