package com.example.trelloweb.controllers;


import com.example.impl.services.BoardService;
import com.example.trelloapi.dto.BoardDto;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/board/")
public class BoardRestControllerV1 {

    @Autowired
    private BoardService boardService;

    @ApiOperation(value = "доски")
    @ApiResponses(value = {@ApiResponse(code = 200, message = "успешно")})
    @GetMapping(value = "boards")
    public ResponseEntity<?> getBoards() {
        return ResponseEntity.ok(boardService.getAllBoard());
    }

    @ApiOperation(value = "создание доски")
    @ApiResponses(value = {@ApiResponse(code = 200, message = "успешно")})
    @PostMapping(value = "create_board")
    public ResponseEntity<?> createBoard(@RequestBody BoardDto boardDto) {
        boardService.createBoard(boardDto);


        Map<String, Integer> response = new HashMap<>();
        response.put("status", 200);
        return ResponseEntity.ok(response);
    }

}
