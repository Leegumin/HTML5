package com.example.back_end.service;

import com.example.back_end.dao.BoardDao;
import com.example.back_end.model.Board;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

/**
 * packageName : com.example.back_end.service
 * fileName : BoardServiceImp
 * author : gumin
 * date : 2022-06-02
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-06-02         gumin          최초 생성
 */

@Service
public class BoardServiceImp implements BoardService{
    Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private BoardDao boardDao;

    @Override
    public Optional<Board> findById(Long id) {
        return boardDao.findById(id);
    }

    @Override
    public List<Board> findByPublished(String published) {
        return boardDao.findByPublished(published);
    }

    @Override
    public List<Board> findByTitleContaining(String title) {
        // *빈 값으로 초기화
        List<Board> boards = Collections.emptyList();
        if (title == null) {
            // *타이틀 값이 null 값이면 빈 값으로 초기화한 tutorials에 전체 값을 반환
            boards = boardDao.findAll();
            // *타이틀 값이 있으면 매개변수로 들어가는 title의 값과 일치하는 title 변수를 가진 Tutorial을 배열로 반환함
        }
        else {
            boards = boardDao.findByTitleContaining(title);
        }
        return boards;
    }

    @Override
    public List<Board> findAll() {
        return boardDao.findAll();
    }

    @Override
    public boolean save(Board board) {
        int queryResult = 0;
        logger.info("Tutorial : {} ", board);

        // *id값이 없을때 insert문 실행됐는지 여부 파악
        if (board.getId() == null) {
            // *insertTutorial(tutorial); -> 처음 호출되는 순간 insertTutorial에 데이터가 저장되어 Tutorial.xml의 insert문 실행 가능해짐
            queryResult = boardDao.insertTutorial(board);
            logger.info("queryResult : {} ", queryResult);

        }
        // *id값이 있을때 update문 실행됐는지 여부 파악
        else {
            queryResult = boardDao.updateTutorial(board);
        }
        return queryResult > 0;
    }

    // 메소드가 실행 됐는지 안됐는지를 알 수 있는 메소드(참, 거짓 값)
    @Override
    public boolean deleteById(Long id) {
        int queryResult = 0;
        queryResult = boardDao.deleteTutorial(id);
        return queryResult > 0;
    }

    @Override
    public boolean deleteAll() {
        int queryResult = 0;
        queryResult = boardDao.deleteAll();
        return queryResult > 0;
    }
}
