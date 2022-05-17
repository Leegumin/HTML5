package com.example.guminsite.dao;

import com.example.guminsite.model.BoardDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * packageName : com.example.guminsite.dao
 * fileName : BoardDao
 * author : gumin
 * date : 2022-05-17
 * description : @Mapper : Mybatis에서 사용하는 어노테이션, xml에서 inerface를 구현함 ( CRUD sql문 작성 )
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-17         gumin          최초 생성
 */
@Mapper
public interface BoardDao {
    // insert sql 문을 위한 메소드
    int insertBoard(BoardDto params);

    // 게시판 목록 조회
    List<BoardDto> selectBoardList();
    
    // 게시판 상세 목록 조회하는 메소드 (  매개변수가 게시판 번호인 select sql문 )
    BoardDto selectBoardDetail(Long idx);

    // 게시판 글 수정 메소드
    int updateBoard(BoardDto params);

    // 게시판 글 삭제 메소드
    int deleteBoard(Long idx);
}
