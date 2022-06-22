package com.example.backend.service;

import com.example.backend.model.QnABoard;
import com.example.backend.paging.Criteria;

import java.util.List;
import java.util.Optional;

/**
 * packageName : com.example.backend.service
 * fileName : QnABoardService
 * author : Mingu
 * date : 2022-06-15
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-06-15         Mingu          최초 생성
 */
public interface QnABoardService {

    // id로 회원 조회
    public Optional<QnABoard> findById(Long id);

    // Todo: 2개 수정 findByTitleContaining, findAll
    // 이메일로 회원 찾기
    public List<QnABoard> findByTitleContaining(Criteria criteria);

    // 모든 회원 조회
    public List<QnABoard> findAll(Criteria criteria);

    // 서비스 메소드
    // *insert&update 같이 구성되는 메소드
    public Optional<QnABoard> save(QnABoard qnaBoard);

    // id로 회원 삭제
    public boolean deleteById(Long id);

    // 모든 회원 삭제
    public boolean deleteAll();
}
