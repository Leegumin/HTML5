package com.example.dongsungsi.controller;

import com.example.dongsungsi.model.Customer;
import com.example.dongsungsi.service.CustomerServiceImp;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * packageName : com.example.dongsungsi.controller
 * fileName : CustomerController
 * author : gumin
 * date : 2022-06-07
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-06-07         gumin          최초 생성
 */
// *@CrossOrigin
// *웹 페이지의 제한(CORS(Cross-origin resource sharing) 문제)된 자원을 외부 도메인에서 접근을 허용해주는 매커니즘
// *기본적으로 '모든 도메인, 모든 요청방식'에 대해 허용 한다는 뜻
// *(origins = "http://localhost:8080") : 특정 도메인만 허용할 경우 origins에 주소가 들어감. 도메인이 복수개일 경우 ','로 구분
// *front-end와 연결하기 위해 사용함
@CrossOrigin(origins = "http://localhost:8080")
// *Json 데이터로 주고 받는 어노테이션
@RestController
// *@RequestMapping("/api") : http://localhost:8000/ -> http://localhost:8000/api로 기본주소 변경됨
@RequestMapping("/api")
public class CustomerController {

    // logger을 찍기 위한 객체생성
    Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private CustomerServiceImp customerService;

    // 모든 회원 조회 메뉴
    @GetMapping("/customers")
    public ResponseEntity<Object> getAllCustomers() {

        List<Customer> customers = customerService.findAll();

        // 모든 회원 조회 서비스 호출
        // * 성공하면 customers와 OK 메시지 송출
        try {
            return new ResponseEntity<Object>(customers, HttpStatus.OK);
        }
        // * 실패하면 에러
        catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            // Vue에 에러메세지 전송
            return new ResponseEntity<Object>(HttpStatus.BAD_REQUEST);
        }
    }

    // 회원 생성
    @PostMapping("/customers")
    public ResponseEntity<Object> createCustomers(
            @RequestBody
            Customer customer) {
        // 회원 생성 메서드 호출
        // *save(customer)은 Optional<Customer>인데 거기서 데이터를 꺼내기 위해 .get을 붙임
        // *혹은 Optional<Customer> savedCustomer = customerService.save(customer); 로 형을 맞춰줘도 됨
        Customer savedCustomer = customerService.save(customer).get();

        // * 성공하면 savedCustomer와 OK 메시지 송출
        try {
            return new ResponseEntity<Object>(savedCustomer, HttpStatus.OK);
        }
        catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            // Vue에 보낼 에러 메세지 전송
            return new ResponseEntity<Object>(HttpStatus.BAD_REQUEST);
        }
    }

    // id로 회원 조회 메뉴
    @GetMapping("/customers/{id}")
    public ResponseEntity<Object> getCustomerById(
            @PathVariable("id")
            Long id) {
        // id로 회원 조회하는 서비스 호출
        // *save(customer)은 Optional<Customer>인데 거기서 데이터를 꺼내기 위해 .get을 붙임
        Customer customer = customerService.findById(id).get();

        // * 성공하면 customer, OK 메시지 송출
        try {
            // * id값을 찾았을 경우
            if (customer != null) {
                return new ResponseEntity<Object>(customer, HttpStatus.OK);
            }
            // * id값을 못찾았을 경우
            else {
                return new ResponseEntity<Object>(HttpStatus.NOT_FOUND);
            }
        }
        catch (Exception ex) {
            logger.error(ex.getMessage(), ex);
            // Vue에 보낼 에러 메세지 전송
            return new ResponseEntity<Object>(HttpStatus.BAD_REQUEST);
        }
    }
}
