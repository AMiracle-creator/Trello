package com.example.impl.services;

import com.example.impl.models.Board;
import com.example.impl.repository.BoardRepository;
import com.example.trelloapi.dto.BoardDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceImpl implements BoardService {

    @Autowired
    private BoardRepository boardRepository;

    @Override
    public List<Board> getAllBoard() {
        return boardRepository.findAll();
    }

    @Override
    public void createBoard(BoardDto boardDto) {
        Board board = new Board();
        board.setName(boardDto.getName());

        boardRepository.save(board);
    }
}
