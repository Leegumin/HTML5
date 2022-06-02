package com.example.back_end.controller;

import com.example.back_end.model.Board;
import com.example.back_end.service.BoardServiceImp;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

/**
 * packageName : com.example.back_end.controller
 * fileName : Controller
 * author : gumin
 * date : 2022-06-02
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-06-02         gumin          최초 생성
 */
// *@CrossOrigin
// *웹 페이지의 제한(CORS(Cross-origin resource sharing) 문제)된 자원을 외부 도메인에서 접근을 허용해주는 매커니즘
// *기본적으로 '모든 도메인, 모든 요청방식'에 대해 허용 한다는 뜻
// *(origins = "http://localhost:8080") : 특정 도메인만 허용할 경우 origins에 주소가 들어감. 도메인이 복수개일 경우 ','로 구분
// *front-end와 연결하기 위해 사용함
@CrossOrigin(origins = "http://localhost:8080")

// *@RestController : REST API 호출을 위한 어노테이션, JSON 형태로 들어옴
@RestController

// *@RequestMapping("/api") : http://localhost:8000/ -> http://localhost:8000/api로 기본주소 변경됨
@RequestMapping("/api")
public class Controller {
    Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    BoardServiceImp boardService;

    // INSERT 새 글 쓰기
    // *ResponseEntity : frontend 요청 시 객체를 결과로 전달
    // *@RequestBody : 클라이언트가 전송하는 Json(application/json) 형태의 HTTP Body 내용을 Java Object로 변환시켜주는 역할
    @PostMapping("/boards")
    public ResponseEntity<Board> createBoard(
            @RequestBody
            Board board) {
        logger.info("createBoard - board : {} ", board);
        boolean bSuccess = boardService.save(board);

        try {
//            if (bSuccess == true) 밑에 조건과 동일함
            if (bSuccess) {
                // *정상 실행이 된 경우
                // *ResponseEntity<>(매개변수 객체, 출력할 상태정보);
                return new ResponseEntity<>(board, HttpStatus.CREATED);
            }
            // *정상 실행 안된 경우 : NOT_FOUND를 프론트엔드로 전송
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        catch (Exception e) {
            // *DB 에러가 났을 경우 : INTERNAL_SERVERp_ERROR 프론트엔드로 전송
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // ID 검색
    @GetMapping("/boards/{id}")
    public ResponseEntity<Board> getBoardById(
            @PathVariable("id")
            long id) {
        // *Optional<Tutorial> : Tutorial이 null이면 "" 값으로 바꿔줌
        // *Tutorial.get()이 null이면 : null.get() => null 포인트 에러
        // *null 값을 ""으로 변경해주면 에러 안뜸
        Optional<Board> board = boardService.findById(id);

        // *Optional 메소드 isPresent : 값이 있으면
        if (board.isPresent()) {
            // *ResponseEntity<>(객체, 상태정보) => 프론트엔드로 전송
            return new ResponseEntity<>(board.get(), HttpStatus.OK);
        }
        else {
            // *프론트엔드로 전송 : NOT_FOUND
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // TITLE 검색
    @GetMapping("/boards")
    public ResponseEntity<List<Board>> getTitleBoards(String title) {
        // *title(제목)을 조회하는 서비스를 호출
        List<Board> boards = boardService.findByTitleContaining(title);
        logger.info("boards: {}", boards);
        try {
            // *조회데이터가 없을 때
            if (boards.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            // *조회데이터가 있을 때 :tutorials, 상태정보 (OK) 전송
            return new ResponseEntity<>(boards, HttpStatus.OK);
        }
        catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

    // UPDATE 글 수정하기
    @PutMapping("/boards/{id}")
    public ResponseEntity<Board> updateBoard(
            @PathVariable("id")
            long id,
            @RequestBody
            Board board) {
        // *id에 해당하는 데이터가 있는지 조회
        // *Optional<객체> : 객체가 null이면 자동으로 ""으로 바꿔줌(null 포인트 에러 방지)
        Optional<Board> boardData = boardService.findById(id);
        logger.info("boardData: {}", boardData);
        logger.info("board: {}", board);
        if (boardData.isPresent()) {
            // *tutorialData가 있을 때
            boolean bSuccess = boardService.save(board);

            if (bSuccess) {
                // *save 호출이 성공할 때
                return new ResponseEntity<>(board, HttpStatus.CREATED);
            }
            // *save 호출이 실패할 때
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
        else {
            // *tutorialData가 없을 때
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // Delete
    @PutMapping("/boards/deletion/{id}")
    public ResponseEntity<HttpStatus> deleteBoard(
            @PathVariable("id")
            long id) {
        // *update문 호출 ( DELETE_YN = 'Y' )
        boolean bSuccess = boardService.deleteById(id);

        // *프론트엔드 쪽으로 상태정보를 보내줌
        try {
            if (bSuccess) {
                // *update문이 성공했을 경우
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            // *update문이 실패했을 경우( 0건 수정이 될 경우 )
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        catch (Exception e) {
            // *DB 에러가 났을 경우
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // Delete All
    @PutMapping("/boards")
    public ResponseEntity<HttpStatus> deleteAllBoards() {
        // *update문 호출 ( DELETE_YN = 'Y' )
        boolean bSuccess = boardService.deleteAll();

        // *프론트엔드 쪽으로 상태정보를 보내줌
        try {
            if (bSuccess) {
                // *update문이 성공했을 경우
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            // *update문이 실패했을 경우( 0건 수정이 될 경우 )
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        catch (Exception e) {
            // *DB 에러가 났을 경우
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }


    @GetMapping("/boards/published")
    public ResponseEntity<List<Board>> findByPublished() {

        // 테이블 컬럼중에 published가 'Y'인 데이터만 조회
        List<Board> boards = boardService.findByPublished("Y");

        // 프론트엔드 쪽으로 상태정보를 보내줌
        try {
            if (boards.isEmpty()) { // tutorials가 없으면
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            // tutorials가 있으면
            return new ResponseEntity<>(boards, HttpStatus.OK);
        }
        catch (Exception e) { // db 에러가 날 경우
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
