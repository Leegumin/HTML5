package com.example.boot_exam.controller;

import com.example.boot_exam.dao.BoardDao;
import com.example.boot_exam.model.BoardDto;
import com.example.boot_exam.service.BoardServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * packageName : com.example.guminsite.controller
 * fileName : BoardController
 * author : gumin
 * date : 2022-05-18
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-18         gumin          최초 생성
 */
// @RestController : json / text로 프론트엔드로 전송, Vue, React
// 비교) @Controller : html, jsp, 타읾리프 파일로 바로 출력
// 샘플) http://localhost:8000/api/board
@RestController
// @RequestMapping : 호스트번호 뒤에 /api를 자동으로 설정해줌
@RequestMapping("/api")
public class BoardApiController {
    //    로그 정의 : slf4j 로그
    Logger looger = LoggerFactory.getLogger(this.getClass());

    // @Autowired를 달아주어야
    // 스프링에서 객체를 받아서 아래 멤버변수에 넣을 수 있음
    @Autowired
    BoardDao         board;
    @Autowired
    BoardServiceImpl boardService; // -> 단순히 정의를 내린 코드

//    글쓰기
    @PostMapping("/boards")
    public List<BoardDto> registerBoard(
            @RequestBody
            BoardDto boardDto) {
        try {
            // insert문 실행
            boolean isRegistered = boardService.registerBoard(boardDto);
        }
        // DB 관련 데이터 에러
        catch (DataAccessException e) {
            // TODO => DB 처리 과정에 문제가 발생했다는 메세지를 출력
        }
        // DB 관련 데이터 에러를 제외한 나머지
        catch (Exception e) {
            // TODO => 시스템에 문제가 발생했다는 메세지를 출력
        }
        // insert 완료 후 데이터 확인을 위한 전체 조회 ( select )
        return boardService.getBoardAllList();
    }

    //    페이지 목록보기
    @GetMapping("/boards/cpage/{currentPageNo}/rpage/{recordsPerPage}/sword/{searchKeyword}/stype/{searchType}")
    public List<BoardDto> openBoardList(BoardDto params) {
        return boardService.getBoardList(params);
    }

    // 상세목록 보기 서비스를 호출 ( select : 1건 )
    @GetMapping("/boards/{id}")
    public BoardDto openBoardWirte(
            @PathVariable("id")
            Long id) {
        BoardDto detail = boardService.getBoardDetail(id);
        System.out.println(detail);
        return detail;
    }

    // 글삭제
    @PutMapping(value = "/boards/deletion/{id}")
    public List<BoardDto> deleteBoard(
            @PathVariable("id")
            Long id) {
        // 삭제 서비스 호출
        boolean isDeleted = boardService.deleteBoard(id);
        // 삭제 되었는지 전체 조회 함 ( select : 전체 조회 )
        return boardService.getBoardAllList();
    }

    //    글수정
    @PostMapping("/boards/{id}")
    public List<BoardDto> updateBoard(
            @RequestBody
            BoardDto boardDto) {
        try {
            boolean isRegistered = boardService.registerBoard(boardDto);
        }
        catch (DataAccessException e) {
            // TODO => DB 처리 과정에 문제가 발생했다는 메세지를 출력
        }
        catch (Exception e) {
            // TODO => 시스템에 문제가 발생했다는 메세지를 출력
        }
        return boardService.getBoardAllList();
    }

}
