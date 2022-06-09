package com.example.dongsungsi.service;

import com.example.dongsungsi.model.Customer;

import java.util.List;
import java.util.Optional;

/**
 * packageName : com.example.dongsungsi.service
 * fileName : CustomerService
 * author : gumin
 * date : 2022-06-03
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-06-03         gumin          최초 생성
 */
public interface CustomerService {

    // id로 회원 조회
    public Optional<Customer> findById(Long id);

    // 모든 회원 조회
    public List<Customer> findAll();

    // 서비스 메소드
    // *insert&update 같이 구성되는 메소드
    public Optional<Customer> save(Customer customer);

    // id로 회원 삭제
    public boolean deleteById(Long id);

    // 모든 회원 삭제
    public boolean deleteAll();
}
