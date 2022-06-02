package com.example.back_end.dao;

import com.example.back_end.model.Board;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Optional;

/**
 * packageName : com.example.back_end.dao
 * fileName : BoardDao
 * author : gumin
 * date : 2022-06-02
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-06-02         gumin          최초 생성
 */
@Mapper
public interface BoardDao {
    // 화면에서 publish 버튼을 클릭할 때 적용되는 메소드
    // * List<Tutorial> 배열을 반환
    List<Board> findByPublished(String published);

    // 제목 검색을 위한 메소드
    List<Board> findByTitleContaining(String title);

    // 모든 데이터 목록 조회
    List<Board> findAll();

    // id에 해당하는 값을 조회
    // Optional : null을 방지하는 클래스
    Optional<Board> findById(Long id);

    // Tutorial 테이블에 데이터 넣기 메소드
    int insertTutorial(Board board);

    // Tutorial 테이블에 데이터 수정 메소드
    int updateTutorial(Board board);

    // Tutorial 테이블에 데이터 삭제(수정) 메소드
    int deleteTutorial(Long id);

    // Tutorial 테이블에 데이터 모두삭제(수정) 메소드
    int deleteAll();
}
