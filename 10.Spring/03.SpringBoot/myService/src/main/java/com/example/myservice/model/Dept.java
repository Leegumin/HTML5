package com.example.myservice.model;

import lombok.Getter;
import lombok.Setter;

/**
 * packageName : com.example.myservice.model
 * fileName : Dept
 * author : ds
 * date : 2022-05-12
 * description : 부서 테이블에 한건씩 담는 클래스
 *             ( dno ( 숫자 ), dname ( 문자열 ), loc ( 문자열 ) )
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-12         ds          최초 생성
 */
// Rombok의 기능
@Setter // setter 자동 추가
@Getter // getter 자동 추가
public class Dept {
    private int DNO; // 숫자 ( 부서번호 )
    private String DNAME; // 문자열( 부서이름 )
    private String LOC; // 문자열( 지역 )
}
