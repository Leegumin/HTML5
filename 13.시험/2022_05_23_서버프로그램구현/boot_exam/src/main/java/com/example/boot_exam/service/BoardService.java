package com.example.boot_exam.service;

import com.example.boot_exam.model.BoardDto;

import java.util.List;

/**
 * packageName : com.example.guminsite.service
 * fileName : BoardService
 * author : gumin
 * date : 2022-05-18
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-18         gumin          최초 생성
 */
public interface BoardService {
    // 게시판에 insert 하는 서비스
    boolean registerBoard(BoardDto params);

    // 상세 목록을 확인하는 서비스 ( Select )
    BoardDto getBoardDetail(Long idx);

    // 게시판의 글 목록을 가져오는 서비스 ( Select : 여러건, 전체 글 목록 )
    public List<BoardDto> getBoardAllList();
    
    // 페이징 처리를 위한 서비스
    public List<BoardDto> getBoardList(BoardDto params);

    // 게시판 글을 삭제하는 서비스 ( Update ) : delete_Yn = 'Y'로 업데이트
    public boolean deleteBoard(Long idx);
}
