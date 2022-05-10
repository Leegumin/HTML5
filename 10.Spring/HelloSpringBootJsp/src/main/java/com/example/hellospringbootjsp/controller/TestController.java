package com.example.hellospringbootjsp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * packageName : com.example.hellospringbootjsp.configration.control
 * fileName : TestController
 * author : ds
 * date : 2022-05-10
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-10         ds          최초 생성
 */
// 웹 브라우저의 URL 매핑될 jsp 파일
@Controller
public class TestController {

    // 웹 브라우저의 URL : /
    // 전체 주소 : http://localhost:8080/
    // hello.jsp 로딩됨
    // HTTP 프로토콜 전송 방식 : Get, Post, Delete, Patch
    @GetMapping("/")
    public String hello() {
        return "hello";
    }
}
