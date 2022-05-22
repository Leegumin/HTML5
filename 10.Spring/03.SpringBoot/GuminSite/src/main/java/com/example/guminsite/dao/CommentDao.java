package com.example.guminsite.dao;

import com.example.guminsite.model.BoardDto;
import com.example.guminsite.model.CommentDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * packageName : com.example.guminsite.dao
 * fileName : BoardDao
 * author : gumin
 * date : 2022-05-17
 * description : @Mapper : Mybatis에서 사용하는 어노테이션, xml에서 CRUD를 위한 inerface를 구현함
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-17         gumin          최초 생성
 */
@Mapper
public interface CommentDao {
    // insert sql 문을 위한 메소드 - 댓글 달기
    int insertComment(CommentDto params);

    // 댓글 수정 메소드
    int updateComment(CommentDto params);

    // 댓글 삭제 메소드
    int deleteComment(Long idx);

    // 댓글 상세 목록 조회하는 메소드 ( 매개변수가 게시판 번호인 select sql문 )
    CommentDto selectCommentDetail(Long idx);

    // 댓글 전체 조회
    List<CommentDto> selectCommentAllList();

    // 댓글 목록조회 메소드
    List<CommentDto> selectCommentList(CommentDto params);

    // 댓글 테이블 총 건수를 가져오는 메소드 ( select : 1건 )
    int selectCommentTotalCount(CommentDto params);
}
