package com.example.impl.services;

import com.example.trelloapi.dto.UserDto;
import com.example.impl.models.Provider;
import com.example.impl.models.User;
import com.example.impl.repository.UsersRepository;
import com.example.trelloapi.service.UsersService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;


@Component
public class UsersServiceImpl implements UsersService {

    @Autowired
    private UsersRepository usersRepository;
    @Autowired
    private ModelMapper modelMapper;

    @Override
    public List<UserDto> getAllUsers() {
        List<User> users = usersRepository.findAll();
        List<UserDto> userDtos = new ArrayList<>();
        for (User u : users) {
            userDtos.add(modelMapper.map(u, UserDto.class));
        }
        return userDtos;
    }

    @Override
    public void banAll() {
        List<User> users = usersRepository.findAll();
        for (User user : users) {
            if (!user.isAdmin()) {
                user.setState(User.State.BANNED);
                usersRepository.save(user);
            }
        }
    }

    @Override
    public UserDto findEmail(String email) {
        User user = usersRepository.findByEmail(email);
        if (user != null) {
            return modelMapper.map(user, UserDto.class);
        }
        return null;
    }
    @Override
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
