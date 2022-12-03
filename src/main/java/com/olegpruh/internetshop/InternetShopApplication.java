package com.olegpruh.internetshop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
public class InternetShopApplication {

    public static void main(String[] args) {
        SpringApplication.run(InternetShopApplication.class, args);
    }

}
