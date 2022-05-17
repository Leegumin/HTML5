package com.example.myservice.controller;

import com.example.myservice.dao.Tb_MemberDao;
import com.example.myservice.model.Tb_Member;
import com.example.myservice.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * packageName : com.example.myservice.controller
 * fileName : DeptController
 * author : ds
 * date : 2022-05-12
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-12         ds          최초 생성
 */
// @RestController : 메뉴달기, 반환값 : json 파일 형태
// @Controller : 메뉴달기, 반환값 : jsp, html, 타임리프 파일 형태
// Rest API : CRUD( Insert : Post, Select : Get, Update : Put, Delete : Delete )
/*@RestController*/
public class MemberController {

    // @Autowired : 객체를 자동 의존성 주입( 자동 DI )
//    @Autowired
//    DeptDao deptDao;

    // @Autowired : 자동 의존성 주입 ( DI ), 대상 : 스프링에 등록된 객체만
    // 스프링에 객체를 등록 : 클래스 위에  @Component, @Service, @repository
//    @Autowired
//    DeptServiceImpl deptService;

    // @GetMapping : 메뉴 달기 (/main), select 실행
//    @GetMapping("/dept/all")
//    public List<Dept> selectAll() {
////        List<Dept> list = deptDao.selectList();
//        List<Dept> list = deptDao.selectAll();
//        return list;
//    }
//
//    @Autowired
//    DeptDao2 deptDao2;
//    @Autowired
//    DeptServiceImpl2 deptService2;
//    @GetMapping("/dept2/all")
//    public List<Dept2> selectAll() {
////        List<Dept> list = deptDao.selectList();
//        List<Dept2> list = deptDao2.selectAll();
//        return list;
//    }
//
//    // @PostMapping : insert 실행
//    // HTML : 헤더(머리말), 본문(BODY)
//    // @RequestBody : 본문에 TEXT / JSON 형태로 데이터를 전송하겠음
////    @PostMapping("/dept/new")
////    public List<Dept> insertMember(
////            @RequestBody
////            Dept dept) {
////        // 웹브라우저에서 json 형태로 데이터(dept 객체)를 넘겨받아 DB에 INSERT문을
////        // 실행하는 부분
////        deptService.insertMember(dept);
////        // 데이터 추가되었는지 결과 확인(DB Select)
//////        return deptDao.selectList();
////        return deptDao.selectAll();

    @Autowired
    Tb_MemberDao         memberDao;
    @Autowired
    Tb_MemberServiceImpl memberService;

    // Delete sql문 실행
    // @DeleteMapping : 데이터 삭제에 해당하는 웹 브라우저 URL 어노테이션
    @DeleteMapping("/member/{userId}")
    public List<Tb_Member> deleteMember(
            @PathVariable
            String userId) {
        // 데이터 삭제 메소드 호출
        memberService.deleteMember(userId);
        // 데이터가 삭제되었는지 전체 데이터 다시 조회
        return memberService.selectAll();
    }

    ;

    // select
    @GetMapping("/member/all")
    public List<Tb_Member> selectAll() {
        List<Tb_Member> list = memberDao.selectAll();
        return list;
    }

    // @PutMapping : update 어노테이션
    // @PathVariable : URL 메뉴 /dept/{dno} 중에서 dno 값을 의미함
    // 웹브라우저 URL 매개변수{dno}를 메소드 updateMember의 매개변수 dno로 연결

    // <웹 애플리케이션 개발 : 웹 URL 형태>
    // 형태 1(전통방식): http://127.0.0.1/read?no=1 : html, JSP, 타임리프 개발
    // @GetMapping("read")
    // 메소드의 매개변수 : @RequestParam("no") int no

    // 형태 2(REST API): http://127.0.0.1/read/1 : REST API, axios 이용, 데이터(Json)
    // @GetMapping("read/{no}")
    // 메소드의 매개변수 : @PathVariable("no") int no
    @PutMapping("/member/{userId}")
    public List<Tb_Member> updateMember(
            @PathVariable
            String userId,
            @RequestBody
            Tb_Member member) {
        // update 문 실행
        memberService.updateMember(userId, member);
        // 데이터가 수정되었는지 전체 데이터 다시 조회
        return memberService.selectAll();
    }

    // insert
    @PostMapping("/member/new")
    public List<Tb_Member> insertMember(
            @RequestBody
            Tb_Member member) {
        // 웹브라우저에서 json 형태로 데이터(dept 객체)를 넘겨받아 DB에 INSERT문을 실행하는 부분
        memberService.insertMember(member);
        // 데이터 추가되었는지 결과 확인(DB Select)
        return memberService.selectAll();
    }
}
