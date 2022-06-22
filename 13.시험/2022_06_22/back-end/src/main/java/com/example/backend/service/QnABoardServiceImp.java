package com.example.backend.service;

import com.example.backend.dao.QnABoardDao;
import com.example.backend.model.QnABoard;
import com.example.backend.paging.Criteria;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

/**
 * packageName : com.example.backend.service
 * fileName : QnABoardServiceImp
 * author : Mingu
 * date : 2022-06-15
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-06-15         Mingu          최초 생성
 */
@Service
public class QnABoardServiceImp implements QnABoardService {
    @Autowired
    private QnABoardDao qnaBoardDao;

    Logger logger = LoggerFactory.getLogger(this.getClass());

    // 회원 id로 조회하는 메서드
    @Override
    public Optional<QnABoard> findById(Long id) {
        return qnaBoardDao.findById(id);
    }

    // Todo: 2개 수정 findByTitleContaining, findAll
    @Override
    public List<QnABoard> findByTitleContaining(Criteria criteria) {
        // *빈 값으로 초기화
        List<QnABoard> qnaBoards = Collections.emptyList();

        // Optional.ofNullable(criteria.getTitle()) : Null 체크
        Optional<String> optionalCriteria = Optional.ofNullable(criteria.getTitle());
        // optionalCriteria.orElse("") : Title 값이 Null이면 => ""으로 변경
        // 테이블의 총 건수
        int totalCount = qnaBoardDao.selectTotalCount(optionalCriteria.orElse(""));

        // criteria : 페이징 처리 클래스 객체
        criteria.setTotalItems(totalCount);
        // 총 페이지 개수 : 테이블의 총 건수(totalCount) / 페이지당 출력할 데이터 개수(size)
        criteria.setTotalPages(totalCount / criteria.getSize());

        // title이 null이면 전체검색
        if (criteria.getTitle() == null) {
            qnaBoards = qnaBoardDao.findAll(criteria);
        }
        // title이 있으면 title 검색
        else {
            qnaBoards = qnaBoardDao.findByTitleContaining(criteria);
        }
        return qnaBoards;
    }

    // 모든 회원 조회
    @Override
    public List<QnABoard> findAll(Criteria criteria) {
        return qnaBoardDao.findAll(criteria);
    }

    // 회원 생성&수정 서비스
    @Override
    public Optional<QnABoard> save(QnABoard qnaBoard) {
        // db 시퀀스 번호 저장을 위한 변수
        long seqId = 0;

        // 매개변수 qnaBoard 제대로 들어왔는지 확인
        logger.info("qnaBoard : {} ", qnaBoard);

        // qnaBoard.getId() 없으면 insert문 호출
        //                  있으면 update문 호출
        if (qnaBoard.getId() == null) {
            qnaBoardDao.insertQnABoard(qnaBoard);
        }
        else {
            qnaBoardDao.updateQnABoard(qnaBoard);
        }

        // insert문 후에는 qnaBoard의 id 속성에 값이 저장됨(xml의 <selectkey>가 작동)
        seqId = qnaBoard.getId();
        logger.info("qnaBoard.getID - seqId : {}", seqId);

        return qnaBoardDao.findById(seqId);
    }

    // id로 회원 삭제
    @Override
    public boolean deleteById(Long id) {
        long queryResult = 0;

        // qnaBoardDao.deleteQnABoard(id)가 실행되면 실행된 건수가 저장됨
        queryResult = qnaBoardDao.deleteQnABoard(id);

        // queryResult에 건수가 정상저장되면 true값을 반환
        return queryResult >= 1;
    }

    // 회원 전부 삭제
    @Override
    public boolean deleteAll() {
        long queryResult = 0;

        // qnaBoardDao.deleteAll가 실행되면 실행된 건수가 저장됨
        queryResult = qnaBoardDao.deleteAll();

        // queryResult에 건수가 정상저장되면 true값을 반환
        return queryResult >= 1;
    }
}
