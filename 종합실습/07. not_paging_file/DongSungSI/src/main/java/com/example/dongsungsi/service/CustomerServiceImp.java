package com.example.dongsungsi.service;

import com.example.dongsungsi.dao.CustomerDao;
import com.example.dongsungsi.model.Customer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

/**
 * packageName : com.example.dongsungsi.service
 * fileName : CustomerServiceImp
 * author : gumin
 * date : 2022-06-03
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-06-03         gumin          최초 생성
 */
@Service
public class CustomerServiceImp implements CustomerService {

    @Autowired
    private CustomerDao customerDao;

    Logger logger = LoggerFactory.getLogger(this.getClass());

    // 회원 id로 조회하는 메서드
    @Override
    public Optional<Customer> findById(Long id) {
        return customerDao.findById(id);
    }

    // 회원 전체 조회
    @Override
    public List<Customer> findAll() {
        return customerDao.findAll();
    }

    // 회원 생성&수정 서비스
    @Override
    public Optional<Customer> save(Customer customer) {
        // db 시퀀스 번호 저장을 위한 변수
        long seqId = 0;

        // 매개변수 customer 제대로 들어왔는지 확인
        logger.info("customer : {} ", customer);

        // customer.getId() 없으면 insert문 호출
        //                  있으면 update문 호출
        if (customer.getId() == null) {
            customerDao.insertCustomer(customer);
        }
        else {
            customerDao.updateCustomer(customer);
        }

        // insert문 후에는 customer의 id 속성에 값이 저장됨(xml의 <selectkey>가 작동)
        seqId = customer.getId();
        logger.info("customer.getID - seqId : {}", seqId);

        return customerDao.findById(seqId);
    }

    // id로 회원 삭제
    @Override
    public boolean deleteById(Long id) {
        long queryResult = 0;

        // customerDao.deleteCustomer(id)가 실행되면 실행된 건수가 저장됨
        queryResult = customerDao.deleteCustomer(id);

        // queryResult에 건수가 정상저장되면 true값을 반환
        return queryResult >=1;
    }

    // 회원 전부 삭제
    @Override
    public boolean deleteAll() {
        long queryResult = 0;

        // customerDao.deleteAll가 실행되면 실행된 건수가 저장됨
        queryResult = customerDao.deleteAll();

        // queryResult에 건수가 정상저장되면 true값을 반환
        return queryResult >=1;
    }
}
