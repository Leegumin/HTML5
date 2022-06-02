package com.example.back_end.service;

import com.example.back_end.model.Board;

import java.util.List;
import java.util.Optional;

/**
 * packageName : com.example.back_end.service
 * fileName : BoardService
 * author : gumin
 * date : 2022-06-02
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-06-02         gumin          최초 생성
 */
public interface BoardService {
    // 자료검색 (select) 메소드
    public Optional<Board> findById(Long id);

    public List<Board> findByPublished(String published);

    public List<Board> findByTitleContaining(String title);

    public List<Board> findAll();

    // 서비스 메소드
    // *insert&update 같이 구성되는 메소드
    // *참 거짓 값을 넘겨
    public boolean save(Board board);

    public boolean deleteById(Long id);

    public boolean deleteAll();
}
