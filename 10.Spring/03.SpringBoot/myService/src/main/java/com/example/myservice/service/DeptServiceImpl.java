package com.example.myservice.service;

import com.example.myservice.dao.DeptDao;
import com.example.myservice.model.Dept;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * packageName : com.example.myservice.service
 * fileName : DeptServiceImpl
 * author : ds
 * date : 2022-05-12
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-12         ds          최초 생성
*/
// @Service : Service 컴포넌트로 만들어 스프링에 객체로 등록하는 어노테이션
// @ComponentScan : 컴포넌트들을 자동으로 검색해서 스프링에 등록해주는 어노테이션
// @ComponentScan의 검색 대상 : @Component, @Service, @repository
@Service
public class DeptServiceImpl implements DeptService {

    @Autowired // DI 자동 주입
    DeptDao deptDao;

//    @Override
//    public List<Dept> selectList() {
//        return null;
//    }


    @Override
    public List<Dept> selectAll() {
        return deptDao.selectAll();
    }

    @Override
    public void insertMember(Dept dept) {
        // DB에 insert문 실행하는 부분
        deptDao.insert(dept);
    }
}
