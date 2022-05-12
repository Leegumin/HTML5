package com.example.myservice.controller;

import com.example.myservice.dao.DeptDao;
import com.example.myservice.model.Dept;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
@RestController
public class DeptController {

    // @Autowired : 객체를 자동 의존성 주입( 자동 DI )
    @Autowired
    DeptDao deptDao;

    // @GetMapping : 메뉴 달기 (/main)
    @GetMapping("/main")
    public List<Dept> main() {
        List<Dept> list = deptDao.selectList();
        return list;
    }
}
