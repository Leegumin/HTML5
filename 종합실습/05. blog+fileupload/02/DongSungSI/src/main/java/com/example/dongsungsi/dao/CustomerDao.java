package com.example.dongsungsi.dao;

import com.example.dongsungsi.model.Customer;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Optional;

/**
 * packageName : com.example.dongsungsi.dao
 * fileName : CustomerDao
 * author : gumin
 * date : 2022-06-03
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-06-03         gumin          최초 생성
 * 2022-06-07         gumin          일부 수정
 */
// @Mapper: mybatis 사용시 아래 적용하는 어노테이션
// 인터페이스 구현 => .xml에서 함
@Mapper
public interface CustomerDao {


    // id에 해당하는 값을 조회
    // *Optional : null을 방지하는 클래스
    Optional<Customer> findById(Long id);

    // 모든 데이터 목록 조회
    List<Customer> findAll();

    // * 자료형 long가 붙는 메서드는 전부 실행 건수가 나타남

    // 회원 생성
    long insertCustomer(Customer customer);

    // 회원 수정
    long updateCustomer(Customer Customer);

    // id로 회원 삭제
    long deleteCustomer(Long id);

    // 회원 전체삭제
    long deleteAll();







    

}
