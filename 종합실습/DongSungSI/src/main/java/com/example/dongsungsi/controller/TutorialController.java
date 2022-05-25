package com.example.dongsungsi.controller;

import com.example.dongsungsi.model.Tutorial;
import com.example.dongsungsi.service.TutorialServiceImp;
import oracle.ucp.proxy.annotation.GetCreator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

/**
 * packageName : com.example.dongsungsi.controller
 * fileName : TutorialController
 * author : gumin
 * date : 2022-05-25
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-25         gumin          최초 생성
 */
// *@RestController : REST API 호출을 위한 어노테이션, JSON 형태로 들어옴
@RestController
// *@RequestMapping("/api") : http://localhost:8000/ -> http://localhost:8000/api로 기본주소 변경됨
@RequestMapping("/api")
public class TutorialController {

    Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    TutorialServiceImp tutorialService;

    // *ResponseEntity : frontend 요청 시 객체를 결과로 전달
    // *@RequestBody : 클라이언트가 전송하는 Json(application/json) 형태의 HTTP Body 내용을 Java Object로 변환시켜주는 역할
    @PostMapping("/tutorials")
    public ResponseEntity<Tutorial> createTutorial(
            @RequestBody
            Tutorial tutorial) {
        logger.info("createTutorial - tutorial : {} ", tutorial);
        boolean bSuccess = tutorialService.save(tutorial);

        try {
//            if (bSuccess == true) 밑에 조건과 동일함
            if (bSuccess) {
                // *정상 실행이 된 경우
                // *ResponseEntity<>(매개변수 객체, 출력할 상태정보);
                return new ResponseEntity<>(tutorial, HttpStatus.CREATED);
            }
            // *정상 실행 안된 경우 : NOT_FOUND를 프론트엔드로 전송
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        catch (Exception e) {
            // *DB 에러가 났을 경우 : INTERNAL_SERVERp_ERROR 프론트엔드로 전송
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/tutorials/{id}")
    public ResponseEntity<Tutorial> getTutorialById(
            @PathVariable("id")
            long id) {
        // *Optional<Tutorial> : Tutorial이 null이면 "" 값으로 바꿔줌
        // *Tutorial.get()이 null이면 : null.get() => null 포인트 에러
        // *null 값을 ""으로 변경해주면 에러 안뜸
        Optional<Tutorial> tutorial = tutorialService.findById(id);

        // *Optional 메소드 isPresent : 값이 있으면
        if (tutorial.isPresent()) {
            // *ResponseEntity<>(객체, 상태정보) => 프론트엔드로 전송
            return new ResponseEntity<>(tutorial.get(), HttpStatus.OK);
        }
        else {
            // *프론트엔드로 전송 : NOT_FOUND
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

}
