package com.example.myservice.controller;

import com.example.myservice.dao.DeptDao;
import com.example.myservice.dao.Tb_BoardDao;
import com.example.myservice.model.Dept;
import com.example.myservice.model.Tb_Board;
import com.example.myservice.service.DeptService;
import com.example.myservice.service.DeptServiceImpl;
import com.example.myservice.service.Tb_BoardServiceImpl;
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
@RestController
public class DeptController {

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
    DeptDao         deptDao;
    @Autowired
    DeptServiceImpl deptService;

    @GetMapping("/dept/all")
    public List<Dept> selectAll() {
        List<Dept> list = deptDao.selectAll();
        return list;
    }

    // @PutMapping : update 어노테이션
    // @PathVariable : URL 메뉴 /dept/{dno} 중에서 dno 값을 의미함
    // 웹브라우저 URL 매개변수{dno}를 메소드 updateMember의 매개변수 dno로 연결
    @PutMapping("/dept/{dno}")
    public List<Dept> updateMember(
            @PathVariable
            int dno,
            @RequestBody
            Dept dept) {
        // update 문 실행
        deptService.updateMember(dno, dept);
        // 데이터가 수정되었는지 전체 데이터 다시 조회
        return deptService.selectAll();
    }

    @PostMapping("/dept/new")
    public List<Dept> insertMember(
            @RequestBody
            Dept dept) {
        // 웹브라우저에서 json 형태로 데이터(dept 객체)를 넘겨받아 DB에 INSERT문을 실행하는 부분
        deptService.insertMember(dept);
        // 데이터 추가되었는지 결과 확인(DB Select)
        return deptService.selectAll();
    }
}
