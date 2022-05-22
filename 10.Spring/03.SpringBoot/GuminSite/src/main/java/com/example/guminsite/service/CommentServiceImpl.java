package com.example.guminsite.service;

import com.example.guminsite.dao.CommentDao;
import com.example.guminsite.model.CommentDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
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
// @Service : 스프링에 객체로 생성하는 어노테이션
@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentDao commentDao;

    // *게시판에 Idx(글번호)가 없으면 insert 문 실행 ( 사용자가 새글쓰기 버튼을 클릭 )
    // *글번호가 있으면 update 문 실행 ( 사용자가 글 목록 버튼을 클릭 + 수정버튼 클릭 )
    @Override
    public boolean registerComment(CommentDto params) {

        // *insert 또는  update 결과를 저장하는 변수
        // *위의 sql문이 정상수행되면 1, 아니면 다른 값
        int queryResult = 0;

        // ?데이터 점검
        System.out.println("Service params : " + params);

        // *새댓글 쓰기 ( insert 문 실행 )
        if (params.getIdx() == null) {
            queryResult = commentDao.insertComment(params);
        }
        else {
            // *상세 목록에서 댓글 수정 ( update 문 실행 )
            queryResult = commentDao.updateComment(params);
        }
//        !return queryResult == 1 ? true : false; -> 단순화시킨 코드가 아래 코드
        return queryResult == 1;
    }

    @Override
    public CommentDto getCommentDetail(Long idx) {
        // 글 번호(idx)에 해당하는 상세 목록 보기 ( select 문 실행 : 1건 )
        return commentDao.selectCommentDetail(idx);
    }

    // !전체 게시물 select 하는 서비스
    @Override
    public List<CommentDto> getCommentAllList() {
        List<CommentDto> commentList = commentDao.selectCommentAllList();

        return commentList;
    }

    @Override
    public List<CommentDto> getCommentList(CommentDto params) {
        List<CommentDto> commentDto = Collections.emptyList();

        // *DB params에 해당하는 데이터가 있는지 먼저 확인
        // *조건 : 게시물번호 => 댓글이 있어야함
        // *참조 무결성 체크
        int CommentTotalCount = commentDao.selectCommentTotalCount(params);

        if (CommentTotalCount > 0) {
            // *게시글의 댓글 조회 서비스 호출
            commentDto = commentDao.selectCommentList(params);
        }

        return commentDto;
    }

    // *댓글 번호를 받아서 댓글을 삭제('N' 값을 'Y'값으로 업데이트)하는 서비스
    @Override
    public boolean deleteComment(Long idx) {
        int queryResult = 0;

        // *댓글이 있는지 확인 하는 코드 ( select : 1건 ) : 댓글번호(idx)가 있는지 확인
        CommentDto comment = commentDao.selectCommentDetail(idx);

        // *Delete_Yn : "N" 일때만 AND Comment !=null 아닐때 삭제 진행
        if (comment != null && "N".equals(comment.getDeleteYn())) {
            queryResult = commentDao.deleteComment(idx);
        }
        return queryResult == 1;
    }
}
