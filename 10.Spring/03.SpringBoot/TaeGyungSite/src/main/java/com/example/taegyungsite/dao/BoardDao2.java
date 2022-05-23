package com.example.taegyungsite.dao;

import com.example.taegyungsite.model.BoardDto;
import com.example.taegyungsite.model.BoardDto2;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * packageName : com.example.taegyungsite.dao
 * fileName : BoardDao2
 * author : gumin
 * date : 2022-05-23
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-23         gumin          최초 생성
 */
@Mapper
public interface BoardDao2 {
    // insert 메소드
    int insertBoard2(BoardDto2 params);

    // 게시판 목록을 조회하는 메소드
    List<BoardDto2> selectBoardAllList2();
    
    // 게시판 페이징 처리를 위한 메소드
    List<BoardDto2> selectBoardList2(BoardDto2 params);
    
    // 게시판 상세 목록 조회 메소드
    BoardDto2 selectBoardDetail2(Long idx);

    // 게시물의 총 건수를 가져오는 메소드
    int selectBoardTotalCount2(BoardDto2 params);

    // 게시판 글 수정 메소드
    int updateBoard2(BoardDto2 params);

    // 게시판 글 삭제 메소드
    int deleteBoard2(Long idx);
}
