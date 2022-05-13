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
 *              (CRUD : Insert / Select / Update / Delete)
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-12         ds          최초 생성
 */

// @Mapper : myBatis에서 사용하는 어노테이션, xml문에서 select문을 작성하게 만들어줌
@Mapper
public interface DeptDao {
    // select 문 메서드
//    List<Dept> selectList(); // 부서정보를 select하는 메소드
    List<Dept> selectAll(); // 부서정보를 select 하는 메소드

    void insert(Dept dept); // 부서정보를 insert하는 메소드
}
