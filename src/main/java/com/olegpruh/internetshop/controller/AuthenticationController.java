package com.olegpruh.internetshop.controller;

import com.olegpruh.internetshop.model.User;
import com.olegpruh.internetshop.model.dto.UserLoginDto;
import com.olegpruh.internetshop.model.dto.UserRegistrationDto;
import com.olegpruh.internetshop.security.AuthenticationService;
import com.olegpruh.internetshop.security.jwt.JwtTokenProvider;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.ModelAndView;

import javax.naming.AuthenticationException;
import java.util.Map;

@Controller
public class AuthenticationController {
    private final JwtTokenProvider jwtTokenProvider;
    private final AuthenticationService authenticationService;

    @Autowired
    public AuthenticationController(JwtTokenProvider jwtTokenProvider,
                                    AuthenticationService authenticationService) {
        this.jwtTokenProvider = jwtTokenProvider;
        this.authenticationService = authenticationService;
    }

    @GetMapping("/signin")
    public String signin() {
        return "signin";
    }

    @GetMapping("/signup")
    public String signup() {
        return "signup";
    }

    @PostMapping("/signin")
    public String register(@RequestBody @Valid UserRegistrationDto userRequestDto, Model model) {
        User user = authenticationService.register(userRequestDto.getEmail(),
                userRequestDto.getPassword());
        model.addAttribute("user", user);
        return "user";
    }

    @PostMapping("/signup")
    public ResponseEntity<Object> login(@RequestBody @Valid UserLoginDto userLoginDto, Model model)
            throws AuthenticationException {
        User user = authenticationService.login(userLoginDto.getLogin(),
                userLoginDto.getPassword());
        String token = jwtTokenProvider.createToken(user.getEmail());
        return new ResponseEntity<>(Map.of("token", token), HttpStatus.OK);
    }
}
