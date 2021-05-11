package com.example.trelloapi.validators;

import com.example.trelloapi.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class EmailValidator implements ConstraintValidator<UniqEmail, String> {
    @Override
    public void initialize(UniqEmail constraintAnnotation) {


    }

    @Autowired
    private UsersService userService;

    @Override
    public boolean isValid(String email, ConstraintValidatorContext constraintValidatorContext) {
        return userService.findEmail(email) == null;
    }
}
