package com.example.trelloapi.service;

import com.example.trelloapi.dto.UserDto;

import java.util.List;


public interface UsersService {
    List<UserDto> getAllUsers();

    void banAll();

    void processOAuthPostLogin(String username);

    UserDto findEmail(String email);
}
