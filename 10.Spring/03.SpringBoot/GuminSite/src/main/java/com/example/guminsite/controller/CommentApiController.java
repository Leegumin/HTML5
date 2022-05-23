package com.example.guminsite.controller;

import com.example.guminsite.dao.CommentDao;
import com.example.guminsite.model.CommentDto;
import com.example.guminsite.service.CommentServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * packageName : com.example.guminsite.controller
 * fileName : CommentApiController
 * author : Mingu
 * date : 2022-05-19
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-19         Mingu          최초 생성
 */
// @RestController : json / text로 프론트엔드로 전송, Vue, React
// 비교) @Controller : html, jsp, 타읾리프 파일로 바로 출력
// 샘플) http://localhost:8000/api/board
@RestController
// @RequestMapping : 호스트번호 뒤에 /api를 자동으로 설정해줌
@RequestMapping("/api")
public class CommentApiController {

    //    로그 정의 : slf4j 로그
    Logger logger = LoggerFactory.getLogger(this.getClass());

    // @Autowired를 달아주어야
    // 스프링에서 객체를 받아서 아래 멤버변수에 넣을 수 있음
    @Autowired
    CommentDao         commentDao;
    @Autowired
    CommentServiceImpl commentService; // -> 단순히 정의를 내린 코드

    //  1. 댓글 상세조회
    // *@PathVariable : Variable -> 변수, 즉 변수경로. 메소드의 매개변수로 전달됨
    @GetMapping("/board/comment/{idx}")
    public CommentDto openCommentDetail(
            @PathVariable("idx")
            Long idx) {

        // *콘솔에 로그 찍기
        logger.info("openCommentDetail(idx) : {}", idx);

        // *상세목록 보기 서비스를 호출 ( select : 1건 )
        CommentDto detail = commentService.getCommentDetail(idx);
        return detail;
    }

    //  2. 댓글 등록 & 업데이트
    // ?boardIdx값도 같이 들어가야 업데이트시 에러가 안남. boardIdx값이 안들어가도 업데이트 실행은 지장 없음
    // ?어디까지나 getCommentList();를 불러오는 문제
    // *@PostMapping : insert 할 때 사용하는 어노테이션
    // *@RequestBody : 입력테스트 시 json 형태로 데이터를 전송할 수 있음
    @PostMapping("/board/comment")
    public List<CommentDto> registerComment(
            @RequestBody
            CommentDto commentDto) {
        try {
            // *insert문 실행
            boolean isRegistered = commentService.registerComment(commentDto);
        }
        // *DB 관련 데이터 에러
        catch (DataAccessException e) {
            // *TODO => DB 처리 과정에 문제가 발생했다는 메세지를 출력
        }
        // *DB 관련 데이터 에러를 제외한 나머지
        catch (Exception e) {
            // *TODO => 시스템에 문제가 발생했다는 메세지를 출력
        }
        // *콘솔에 로그 찍기
        logger.info(" commentDto : {} ", commentDto);
        // *insert 완료 후 데이터 확인을 위한 전체 조회 ( select )
        return commentService.getCommentList(commentDto);
    }

    //  3. 댓글 삭제(업데이트 : 'N' 값을 'Y'값으로 변형
    // ?실행할 때 deleteYn값이 'Y'로 바뀌어서 빈 자료라고 나옴.
    // *@PutMapping : update문 실행
    @PutMapping(value = "/board/comment/delection/{idx}")
    public CommentDto deleteComment(CommentDto commentDto) {
        // *삭제 서비스 호출
        boolean isDeleted = commentService.deleteComment(commentDto.getIdx());
        // *삭제 되었는지 게시판의 댓글을 조회 함 ( select : 전체 조회 )
        // *콘솔에 로그 찍기
        logger.info(" commentDto : {} ", commentDto);
        return commentService.getCommentDetail(commentDto.getIdx());
    }

    //   4. 게시글에 달린 댓글 전체 조회
    @GetMapping("/board/{boardIdx}/comments")
    public List<CommentDto> openCommentList(CommentDto params) {
        // *콘솔에 로그 찍기
        logger.info(" commentDto : {} ", params);
        return commentService.getCommentList(params);
    }

}
