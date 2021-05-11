package com.example.trelloweb.controllers;

import com.example.trelloapi.form.UserForm;
import com.example.trelloapi.service.SignUpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import javax.annotation.security.PermitAll;
import javax.validation.Valid;


@Controller
public class SignUpController {
    @Autowired
    private SignUpService signUpService;

    @PermitAll
    @GetMapping("/signUp")
    public String getSignUpPage() {
        System.out.println("[asdasd");
        return "registration";
    }

    @PermitAll
    @PostMapping("/signUp")
    public String signUp(@Valid UserForm form) {

        signUpService.signUp(form);
        return "redirect:/signIn";
    }
}
