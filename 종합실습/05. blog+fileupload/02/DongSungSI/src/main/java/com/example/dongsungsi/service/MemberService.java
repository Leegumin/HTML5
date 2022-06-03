package com.example.dongsungsi.service;

import com.example.dongsungsi.model.MemberDTO;
import com.example.dongsungsi.model.Tutorial;

import java.util.List;
import java.util.Optional;

/**
 * packageName : com.example.dongsungsi.service
 * fileName : MemberService
 * author : gumin
 * date : 2022-06-03
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-06-03         gumin          최초 생성
 */
public interface MemberService {

    // 자료검색 (select) 메소드
    public Optional<MemberDTO> findById(Long id);

//    public List<Tutorial> findByTitleContaining(String title);

    public List<MemberDTO> findAll();

    // 서비스 메소드
    // *insert&update 같이 구성되는 메소드
    // *참 거짓 값을 넘겨
    public boolean save(MemberDTO member);

    public boolean deleteById(Long id);

    public boolean deleteAll();
}
