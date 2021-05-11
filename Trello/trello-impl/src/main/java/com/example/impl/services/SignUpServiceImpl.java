package com.example.impl.services;

import com.example.impl.models.Provider;
import com.example.impl.models.User;
import com.example.impl.repository.UsersRepository;
import com.example.trelloapi.form.UserForm;
import com.example.trelloapi.service.SignUpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;



@Component
public class SignUpServiceImpl implements SignUpService {

    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public void signUp(UserForm form) {

        User newUser = new User();
        newUser.setEmail(form.getEmail());
        newUser.setHashPassword(passwordEncoder.encode(form.getPassword()));
        newUser.setRole(User.Role.USER);
        newUser.setState(User.State.ACTIVE);
        System.out.println("works");

        usersRepository.save(newUser);
    }

    public void processOAuthPostLogin(String username) {
        User existUser = usersRepository.getUserByUsername(username);

        if (existUser == null) {
            User newUser = new User();
            newUser.setUsername(username);
            newUser.setProvider(Provider.GOOGLE);
//            newUser.setEnabled(true);

            usersRepository.save(newUser);
        }

    }
}
