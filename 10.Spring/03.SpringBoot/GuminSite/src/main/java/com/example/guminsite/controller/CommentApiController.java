package com.example.guminsite.controller;

import com.example.guminsite.dao.CommentDao;
import com.example.guminsite.model.CommentDto;
import com.example.guminsite.service.CommentServiceImpl;
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

    // @Autowired를 달아주어야
    // 스프링에서 객체를 받아서 아래 멤버변수에 넣을 수 있음
    @Autowired
    CommentDao         commentDao;
    @Autowired
    CommentServiceImpl commentService; // -> 단순히 정의를 내린 코드

//  1. 댓글 상세조회
    @GetMapping("/write/comment/{idx}")
    public CommentDto openCommentWirte(
            @PathVariable("idx")
            Long idx) {
        // 상세목록 보기 서비스를 호출 ( select : 1건 )
        CommentDto detail = commentService.getCommentDetail(idx);
        System.out.println("detail :" + detail);
        return detail;
    }

//  2. 댓글 등록 & 업데이트
    // ?업데이트 실행은 되는데 리턴값 조회 안됨
    // *@PostMapping : insert 할 때 사용하는 어노테이션
    // *@RequestBody : 입력테스트 시 json 형태로 데이터를 전송할 수 있음
    @PostMapping("/write/comment")
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
        // *insert 완료 후 데이터 확인을 위한 전체 조회 ( select )
        return commentService.getCommentList(commentDto);
    }

//  3. 댓글 삭제(업데이트 : 'N' 값을 'Y'값으로 변형
    // ?리턴값이 노출이 안됨
    // *@PutMapping : update문 실행
    @PutMapping(value = "/comment/delete/{idx}")
    public List<CommentDto> deleteComment(
            @PathVariable("idx")
            Long idx, CommentDto commentDto) {
        // *삭제 서비스 호출
        boolean isDeleted = commentService.deleteComment(idx);
        // *삭제 되었는지 게시판의 댓글을 조회 함 ( select : 전체 조회 )
        return commentService.getCommentList(commentDto);
    }

//   4. 게시글에 달린 댓글 전체 조회
    @GetMapping("/comment/list/board-idx/{boardIdx}")
    public List<CommentDto> openCommentList(CommentDto params) {
        return commentService.getCommentList(params);
    }

    //    페이징 처리를 위한 게시물 검색 메뉴2
    @GetMapping("/comment/list/c-page/{currentPageNo}/r-page/{recordsPerPage}/s-word/{searchKeyword}/s-type/{searchType}")
    public List<CommentDto> openBoardList2(CommentDto params) {
        return commentService.getCommentList(params);
    }

}
