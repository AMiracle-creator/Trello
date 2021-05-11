package com.example.trelloapi.dto;

import lombok.Data;

@Data
public class BoardDto {

    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
