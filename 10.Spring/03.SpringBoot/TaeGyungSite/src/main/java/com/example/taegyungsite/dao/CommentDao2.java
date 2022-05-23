package com.example.taegyungsite.dao;

import com.example.taegyungsite.model.CommentDto;
import com.example.taegyungsite.model.CommentDto2;
import com.example.taegyungsite.model.CommonDto;
import com.example.taegyungsite.model.CommonDto2;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * packageName : com.example.taegyungsite.dao
 * fileName : CommentDao2
 * author : gumin
 * date : 2022-05-23
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-23         gumin          최초 생성
 */
@Mapper
public interface CommentDao2 {
    // 댓글 추가 메소드
    // *
    int insertComment2(CommonDto2 params);

    // 댓글 상세보기 메소드
    CommentDto2 selectCommentDetail2(Long idx);

    // 댓글 수정 메소드
    int updateComment2(CommentDto2 params);

    // 댓글 삭제 메소드
    int deleteComment2(Long idx);

    // 댓글 목록 조회 메소드
    List<CommentDto2> selectCommentList2(CommentDto2 params);
    
    // 게시판의 댓글 모든 건수 조회 메소드
    int selectCommentTotalCount(CommentDto2 params);
}
