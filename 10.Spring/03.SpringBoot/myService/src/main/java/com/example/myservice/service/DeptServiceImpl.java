package com.example.myservice.service;

import com.example.myservice.dao.DeptDao;
import com.example.myservice.model.Dept;
import org.springframework.beans.factory.annotation.Autowired;
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

    @Override
    public void updateMember(int dno, Dept updateDept) {
        // dno : 부서번호로 먼저 데이터가 테이블에 있는지 확인
        Dept dept = deptDao.selectById(dno);

        // 데이터가 있을때만 update 실행
        if (dept != null) {
            // 매개변수 updateDept : 수정될 데이터
            // dept : 현재 db에 저장되어 있는 값
            // setter : 데이터 저장
            // getter : 데이터 조회, 검색
            dept.setDname(updateDept.getDname());
            dept.setLoc(updateDept.getLoc());
            // 위에 setter를 통해 수정된 dept를 매개변수로 전달
            // update문을 실행해서 db에 반영(수정반영)
            deptDao.update(dept);
        }
        else {
            // dept가 null이면 db에 데이터(부서번호에 해당하는)가 없음
            throw new IllegalStateException("부서가 존재하지 않습니다.");
        }
    }
}
