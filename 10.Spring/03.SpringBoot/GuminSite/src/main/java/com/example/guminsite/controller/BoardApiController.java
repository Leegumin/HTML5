package com.example.guminsite.controller;

import com.example.guminsite.dao.BoardDao;
import com.example.guminsite.model.BoardDto;
import com.example.guminsite.service.BoardServiceImpl;
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

    // @Autowired를 달아주어야
    // 스프링에서 객체를 받아서 아래 멤버변수에 넣을 수 있음
    @Autowired
    BoardDao         board;
    @Autowired
    BoardServiceImpl boardService; // -> 단순히 정의를 내린 코드

    @GetMapping("/board/write/{idx}")
    public BoardDto openBoardWirte(
            @PathVariable("idx")
            Long idx) {
        // 상세목록 보기 서비스를 호출 ( select : 1건 )
        System.out.println(idx);
        BoardDto detail = boardService.getBoardDetail(idx);
        System.out.println(detail);
        return detail;
    }

    // @PostMapping : insert 할 때 사용하는 어노테이션
    // @RequestBody : 입력테스트 시 json 형태로 데이터를 전송할 수 있음
    @PostMapping("/board/register")
    public List<BoardDto> registerBoard(
            @RequestBody
            BoardDto boardDto) {
        System.out.println("BoardDto : " + boardDto);
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

    // @PutMapping : update문 실행
    @PutMapping(value = "/board/delete/{idx}")
    public List<BoardDto> deleteBoard(
            @PathVariable("idx")
            Long idx) {
        // 삭제 서비스 호출
        boolean isDeleted = boardService.deleteBoard(idx);
        // 삭제 되었는지 전체 조회 함 ( select : 전체 조회 )
        return boardService.getBoardAllList();
    }

    //    페이징 처리를 위한 게시물 검색 메뉴
    @GetMapping("/board/list/cur-page-no/{currentPageNo}/records-per-page/{recordsPerPage}")
    public List<BoardDto> openBoardList(BoardDto params) {
        return boardService.getBoardList(params);
    }
}
