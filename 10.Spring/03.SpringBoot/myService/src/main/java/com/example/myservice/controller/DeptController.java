package com.example.myservice.controller;

import com.example.myservice.dao.DeptDao;
import com.example.myservice.dao.DeptDao2;
import com.example.myservice.dao.DeptDao3;
import com.example.myservice.dao.EmpDao;
import com.example.myservice.model.Dept;
import com.example.myservice.model.Dept2;
import com.example.myservice.model.Dept3;
import com.example.myservice.model.Emp;
import com.example.myservice.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

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
//
//    @PostMapping("/dept2/new")
//    public List<Dept2> insertMember(
//            @RequestBody
//            Dept2 dept2) {
//        // 웹브라우저에서 json 형태로 데이터(dept 객체)를 넘겨받아 DB에 INSERT문을
//        // 실행하는 부분
//        deptService2.insertMember(dept2);
//        // 데이터 추가되었는지 결과 확인(DB Select)
////        return deptDao.selectList();
//        return deptDao2.selectAll();
//    }

//    @Autowired
//    DeptDao3         deptDao3;
//    @Autowired
//    DeptServiceImpl3 deptService3;
//
//    @GetMapping("/dept3/all")
//    public List<Dept3> selectAll() {
////        List<Dept> list = deptDao.selectList();
//        List<Dept3> list = deptDao3.selectAll();
//        return list;
//    }
//
//    @PostMapping("/dept3/new")
//    public List<Dept3> insertMember(
//            @RequestBody
//            Dept3 dept) {
//        // 웹브라우저에서 json 형태로 데이터(dept 객체)를 넘겨받아 DB에 INSERT문을
//        // 실행하는 부분
//        deptService3.insertMember(dept);
//        // 데이터 추가되었는지 결과 확인(DB Select)
////        return deptDao.selectList();
//        return deptDao3.selectAll();
//    }

    @Autowired
    EmpDao         empDao;
    @Autowired
    EmpServiceImpl empService;

    @GetMapping("/emp/all")
    public List<Emp> selectAll() {
        List<Emp> list = empDao.selectAll();
        return list;
    }
    @PostMapping("/emp/new")
    public List<Emp> insertMember(
            @RequestBody
            Emp emp) {
        // 웹브라우저에서 json 형태로 데이터(dept 객체)를 넘겨받아 DB에 INSERT문을
        // 실행하는 부분
        empService.insertMember(emp);
        // 데이터 추가되었는지 결과 확인(DB Select)
//        return deptDao.selectList();
        return empDao.selectAll();
    }
}
