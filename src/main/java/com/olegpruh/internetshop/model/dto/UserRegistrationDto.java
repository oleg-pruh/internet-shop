package com.olegpruh.internetshop.model.dto;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
public class UserRegistrationDto {
    private String email;
    @NotEmpty(message = "The password couldn't be empty")
    @Size(min = 8, message = "Password must be at least 8 symbols long")
    private String password;
    private String repeatPassword;
}
