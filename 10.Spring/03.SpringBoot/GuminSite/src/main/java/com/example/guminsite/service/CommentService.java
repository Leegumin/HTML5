package com.example.guminsite.service;

import com.example.guminsite.model.CommentDto;
import com.example.guminsite.model.CommentDto;

import java.util.List;

/**
 * packageName : com.example.guminsite.service
 * fileName : CommentService
 * author : gumin
 * date : 2022-05-18
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-18         gumin          최초 생성
 */
public interface CommentService {
    // 댓글등록(insert) 서비스
    public boolean registerComment(CommentDto params);

    // 댓글삭제( Update ) 서비스 : delete_Yn = 'Y'로 업데이트
    public boolean deleteComment(Long idx);

    // 게시글의 댓글 목록 조회 ( Select )  서비스
    public List<CommentDto> getCommentList(CommentDto params);

    // 댓글 상세 조회 ( Select ) 서비스
    public CommentDto getCommentDetail(Long idx);

    // !게시판의 글 목록을 가져오는 서비스 ( Select : 여러건, 전체 글 목록 )
    public List<CommentDto> getCommentAllList();

    
}
