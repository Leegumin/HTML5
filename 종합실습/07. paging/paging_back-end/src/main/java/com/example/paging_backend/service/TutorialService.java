package com.example.paging_backend.service;

import com.example.paging_backend.model.Tutorial;
import com.example.paging_backend.paging.Criteria;

import java.util.List;
import java.util.Optional;

/**
 * packageName : com.example.dongsungsi.service
 * fileName : TutorialService
 * author : gumin
 * date : 2022-05-25
 * description : DAO, Model 이용해서 업무로직을 구성하는 클래스
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-25         gumin          최초 생성
 */
public interface TutorialService {

    // 자료검색 (select) 메소드
    public Optional<Tutorial> findById(Long id);

    public List<Tutorial> findByPublished(String published);

    // Todo: 2개 수정 findByTitleContaining, findAll
    public List<Tutorial> findByTitleContaining(Criteria criteria);

    public List<Tutorial> findAll(Criteria criteria);

    // 서비스 메소드
    // *insert&update 같이 구성되는 메소드
    // *참 거짓 값을 넘겨
    public boolean save(Tutorial tutorial);

    public boolean deleteById(Long id);

    public boolean deleteAll();
}
