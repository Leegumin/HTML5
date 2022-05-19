package com.example.guminsite.dao;

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
public interface CommentDao {
    // insert sql 문을 위한 메소드 - 댓글 달기
    int insertComment(CommentDao params);

    // 댓글 목록 조회
    List<CommentDao> selectCommentAllList();

    // 댓글 페이징 처리를 위한 메소드
    List<CommentDao> selectCommentList(CommentDao params);

    // 댓글 상세 목록 조회하는 메소드 ( 매개변수가 게시판 번호인 select sql문 )
    CommentDao selectCommentDetail(Long idx);

    // 게시물의 총 건수를 가져오는 메소드 ( select : 1건 )
    int selectCommentTotalCount(CommentDao params);

    // 댓글 수정 메소드
    int updateComment(CommentDao params);

    // 댓글 삭제 메소드
    int deleteComment(Long idx);
}
