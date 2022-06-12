package com.example.paging_backend.service;

import com.example.paging_backend.dao.TutorialDao;
import com.example.paging_backend.model.Tutorial;
import com.example.paging_backend.paging.Criteria;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

/**
 * packageName : com.example.dongsungsi.service
 * fileName : TutorialServiceImp
 * author : gumin
 * date : 2022-05-25
 * description : DAO, Model 이용해서 업무로직 구현 클래스
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-25         gumin          최초 생성
 */
@Service
public class TutorialServiceImp implements TutorialService {
    Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TutorialDao tutorialDao;

    @Override
    public Optional<Tutorial> findById(Long id) {
        return tutorialDao.findById(id);
    }

    @Override
    public List<Tutorial> findByPublished(String published) {
        return tutorialDao.findByPublished(published);
    }

    // Todo: 2개 수정 findByTitleContaining, findAll
    @Override
    public List<Tutorial> findByTitleContaining(Criteria criteria) {
        // *빈 값으로 초기화
        List<Tutorial> tutorials = Collections.emptyList();

        // Optional.ofNullable(criteria.getTitle()) : Null 체크
        Optional<String> optionalCriteria = Optional.ofNullable(criteria.getTitle());
        // optionalCriteria.orElse("") : Title 값이 Null이면 => ""으로 변경
        // 테이블의 총 건수
        int totalCount = tutorialDao.selectTotalCount(optionalCriteria.orElse(""));

        // criteria : 페이징 처리 클래스 객체
        criteria.setTotalItems(totalCount);
        // 총 페이지 개수 : 테이블의 총 건수(totalCount) / 페이지당 출력할 데이터 개수(size)
        criteria.setTotalPages(totalCount / criteria.getSize());

        // title이 null이면 전체검색
        if (criteria.getTitle() == null) {
            tutorials = tutorialDao.findAll(criteria);
        }
        // title이 있으면 제목 검색
        else {
            tutorials = tutorialDao.findByTitleContaining(criteria);
        }
        return tutorials;
    }

    @Override
    public List<Tutorial> findAll(Criteria criteria) {
        return tutorialDao.findAll(criteria);
    }

    @Override
    public boolean save(Tutorial tutorial) {
        int queryResult = 0;
        logger.info("Tutorial : {} ", tutorial);

        // *id값이 없을때 insert문 실행됐는지 여부 파악
        if (tutorial.getId() == null) {
            // *insertTutorial(tutorial); -> 처음 호출되는 순간 insertTutorial에 데이터가 저장되어 Tutorial.xml의 insert문 실행 가능해짐
            queryResult = tutorialDao.insertTutorial(tutorial);
            logger.info("queryResult : {} ", queryResult);

        }
        // *id값이 있을때 update문 실행됐는지 여부 파악
        else {
            queryResult = tutorialDao.updateTutorial(tutorial);
        }
        return queryResult > 0;
    }

    // 메소드가 실행 됐는지 안됐는지를 알 수 있는 메소드(참, 거짓 값)
    @Override
    public boolean deleteById(Long id) {
        int queryResult = 0;
        queryResult = tutorialDao.deleteTutorial(id);
        return queryResult > 0;
    }

    @Override
    public boolean deleteAll() {
        int queryResult = 0;
        queryResult = tutorialDao.deleteAll();
        return queryResult > 0;
    }


}
