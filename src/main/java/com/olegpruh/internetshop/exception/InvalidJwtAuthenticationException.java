package com.olegpruh.internetshop.exception;

public class InvalidJwtAuthenticationException extends RuntimeException {
    public InvalidJwtAuthenticationException(String message, Throwable cause) {
        super(message, cause);
    }
}
