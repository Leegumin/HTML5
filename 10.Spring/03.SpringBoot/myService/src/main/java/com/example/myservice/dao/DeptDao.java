package com.example.myservice.dao;

import com.example.myservice.model.Dept;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * packageName : com.example.myservice.dao
 * fileName : DeptDao
 * author : ds
 * date : 2022-05-12
 * description : 부서테이블에 접근해서 데이터를 처리할 수 있는 클래스 ( DAO )
 * (CRUD : Insert / Select / Update / Delete)
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-12         ds          최초 생성
 */
// DAO(Data Access Object)는 데이터베이스에 관련된 작업을 담당하는 객체이다.
// 실질적으로 데이터베이스에 접근한다.
// 효율적으로 커넥션을 사용, 유지보수 및 보안을 위해 사용한다.
// DB 접속 후 CRUD(Create Read Update Delete) 작업을 실행해주는 클래스이다.
// 데이터베이스 접근을 하기 위한 로직과 비즈니스 로직을 분리하기 위해 사용한다.

// @Mapper : myBatis에서 사용하는 어노테이션, xml문에서 select문을 작성하게 만들어줌
@Mapper
public interface DeptDao {
    // select 문 메서드
//    List<Dept> selectList(); // 부서정보를 select하는 메소드
    List<Dept> selectAll(); // 부서정보를 select 하는 메소드

    Dept selectById(int dno); // 부서번호에 해당하는 데이터 조회

    void insert(Dept dept); // 부서정보를 insert하는 메소드

    void update(Dept dept); // 부서번호에 해당하는 데이터 수정

    void delete(int dno); // 부서번호에 해당하는 데이터 삭제
}
