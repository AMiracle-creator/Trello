package com.example.impl.services;

import com.example.impl.models.Board;
import com.example.trelloapi.dto.BoardDto;

import java.util.List;

public interface BoardService {
    List<Board> getAllBoard();

    void createBoard(BoardDto boardDto);
}
