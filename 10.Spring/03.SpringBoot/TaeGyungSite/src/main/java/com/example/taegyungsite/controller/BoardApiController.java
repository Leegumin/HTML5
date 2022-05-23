package com.example.taegyungsite.controller;

import com.example.taegyungsite.model.Board2Dto;
import com.example.taegyungsite.model.BoardDto;
import com.example.taegyungsite.model.CommentDto;
import com.example.taegyungsite.service.*;
// 우리가 사용하는 로그 라이브러리
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * packageName : com.example.taegyungsite.controller
 * fileName : BoardApiController
 * author : ds
 * date : 2022-05-18
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-18         ds          최초 생성
 */
// @RestController : json / text 로 프론트엔드로 전송, Vue, React
//  비교) @Controller : html, jsp, 타임리프 파일로 바로 출력
//  샘플)  http://localhost:8000/api/board/
//    @RequestMapping("/api") => 위의 api를 자동으로 설정해줌
@RestController
@RequestMapping("/api")
public class BoardApiController {

//    로그 정의 : slf4j 로그
    Logger logger = LoggerFactory.getLogger(this.getClass());

//    @Autowired 적어주어야
//    스프링에서 객체를 받아서 아래 멤버변수에 넣을 수 있음
    @Autowired
    BoardServiceImpl boardService; // 정의

    @Autowired
    Board2ServiceImpl board2Service; // 객체 정의 ( 스프링객체 )

    @Autowired
    CommentServiceImpl commentService; // 객체 정의 ( null => 스프링 객체 )

    @GetMapping("/board/write/{idx}")
    public BoardDto openBoardWrite(@PathVariable("idx") Long idx) {
//        상세목록 보기 서비스를 호출( select : 1건 )
        BoardDto detail = boardService.getBoardDetail(idx);
        return detail;
    }

//    DB : CRUD ( C: Insert , R: Select, U: Update, D: Delete )
//    웹 URL : CRUD ( C: Post, R: Get, U: Put, D: Delete )
//    @PathVariable : /board/write/{idx} => 자바 메소드 매개변수로 쓰겠다
//    ex) /board/wirte/1 =>
//        openBoardWrite( @PathVariable("idx") Long idx ) idx = 1
//    Rest API 형태의 URL 많이 사용
    @GetMapping("/board2/write/{idx}")
    public Board2Dto openBoard2Write(@PathVariable("idx") Long idx) {
//        상세목록 보기 서비스를 호출( select : 1건 )
        Board2Dto detail = board2Service.getBoardDetail(idx);
        return detail;
    }

//    @PostMapping : insert 할때 사용하는 어노테이션
//    @RequestBody : 입력테스트시 json 형태로 데이터를 전송할 수 잇음
    @PostMapping("/board/register")
    public List<BoardDto>
            registerBoard(@RequestBody BoardDto boardDto) {

        System.out.println("Controller boardDto : " + boardDto);
        boolean isRegistered = boardService.registerBoard(boardDto);

//        try {
//
////            insert 문 실행
////            boolean isRegistered = boardService.registerBoard(boardDto);
//
//        } catch(DataAccessException e) {
////            DB 관련된 에러는 여기로 들어옴
////            TODO => DB 처리 과정에 문제가 발생했다는 메세지를 출력
//
//        } catch(Exception e) {
////            DB 외의 에러일 경우 여기로 들어옴
////            TODO => 시스템에 문제가 발생했다는 메세지를 출력
//        }
//        insert 완료 후 데이터 확인을 위한 전체 조회( select )
        return boardService.getBoardAllList();
    }

//    @PostMapping : insert 할때 사용하는 어노테이션
//    @RequestBody : 입력테스트시 json 형태로 데이터를 전송할 수 잇음
//  자바의 멤버변수 noticeYn -> JSON 테스트 { "notice_yn" : "N" }
    @PostMapping("/board2/register")
    public List<Board2Dto>
            registerBoard2(@RequestBody Board2Dto board2Dto) {

        System.out.println("Controller boardDto : " + board2Dto);
        boolean isRegistered = board2Service.registerBoard(board2Dto);

        return board2Service.getBoardAllList();
    }

//  @PutMapping : update 문 실행
    @PutMapping(value="/board/delete/{idx}")
    public List<BoardDto> deleteBoard(@PathVariable("idx") Long idx) {

//        삭제 서비스 호출
        boolean isDeleted = boardService.deleteBoard(idx);

//        삭제 되었는지 전체 조회 함 ( select : 전체 조회 )
        return boardService.getBoardAllList();
    }

//    페이징 처리를 위한 게시물 검색 메뉴
    @GetMapping("/board/list/cur-page-no/{currentPageNo}/records-per-page/{recordsPerPage}")
    public List<BoardDto> openBoardList( BoardDto params ) {

        return boardService.getBoardList(params);
    }

//    페이징 처리를 위한 게시물 검색 메뉴 2
    @GetMapping("/board/list/cpage/{currentPageNo}/rpage/{recordsPerPage}/sword/{searchKeyword}/stype/{searchType}")
    public List<BoardDto> openBoardList2( BoardDto params ) {

        return boardService.getBoardList(params);
    }

//    -----------------------------------
//    ----------    댓글 메뉴들 ----------
//    -----------------------------------
//    댓글 추가
    @PostMapping("/board/comments")
    public List<CommentDto>
    registerComment(@RequestBody CommentDto commentDto) {

//        insert : 댓글 추가
        boolean isRegistered = commentService.registerComment(commentDto);

//        댓글 추가 되었는 지 확인
        return commentService.getCommentList(commentDto);
    }

//    댓글 조회
//    전통 개발 : URL http://localhost:8080/board?name=kangtaegyung
//    REST API 개발 : URL http://localhost:8080/board/{name}
//    /board/1/comments => board 게시물 1번의 댓글을 조회하는 메뉴
//    /board/1/comments/1 => board 게시물 1번의 댓글 1번을 조회하는 메뉴
    @GetMapping("/board/{boardIdx}/comments")
    public List<CommentDto> openCommentList(CommentDto commentDto) {

//        콘솔에 로그 찍기
        logger.info(" commentDto : {} ", commentDto);

//        게시물 번호을 받아서 댓글을 조회하는 메뉴
        return commentService.getCommentList(commentDto);
    }

//    댓글 상세 조회
//    @PathVariable : URL {idx} -> 메소드의 매개변수로 전달됨
//    idx : 댓글번호 , 비교) board_idx : 게시물번호
    @GetMapping("/board/comments/{idx}")
    public CommentDto openCommentDetail( @PathVariable("idx") Long idx) {

        logger.info("openCommentDetail(idx): ", idx);

        return commentService.getCommentDetail(idx);
    }

//    댓글 삭제
    @PutMapping("/board/comment/delection/{idx}")
    public CommentDto deleteComment( CommentDto commentDto) {

//        삭제 서비스 호출
        boolean isDeleted =
                commentService.deleteComment(commentDto.getIdx());

//        삭제가 잘 되었는지 댓글 목록을 조회
//        return commentService.getCommentList(commentDto);
        return commentService.getCommentDetail(commentDto.getIdx());
    }
}











