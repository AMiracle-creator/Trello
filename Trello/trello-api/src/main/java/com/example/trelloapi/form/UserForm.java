package com.example.trelloapi.form;

import com.example.trelloapi.validators.UniqEmail;
import com.example.trelloapi.validators.ValidPassword;
import lombok.Data;

import javax.validation.constraints.Email;

@Data
public class UserForm {
    @Email(message = "Неккоректный email")
    @UniqEmail(message = "Такой email уже существует")
    private String email;
    @ValidPassword(message = "Неккоректный  пароль")
    private String password;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
