package com.example.myservice.service;

import com.example.myservice.dao.Tb_BoardDao;
import com.example.myservice.model.Tb_Board;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * packageName : com.example.myservice.service
 * fileName : EmpServiceImpl
 * author : ds
 * date : 2022-05-13
 * description : 업무 로직을 짜는 클래스 ( dao 여러개를 조합 )
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-13         ds          최초 생성
 */
@Service
public class Tb_BoardServiceImpl implements Tb_BoardService {
    @Autowired
    Tb_BoardDao boardDao;

    @Override
    public List<Tb_Board> selectAll() {
        return boardDao.selectAll();
    }

    @Override
    public void insertMember(Tb_Board board) {
        boardDao.insert(board);
    }

    @Override
    public void updateMember(int idx, Tb_Board updateData) {
        Tb_Board board = boardDao.selectById(idx);
//        System.out.println("board : " + board);

        if (board != null) {
            board.setIdx(updateData.getIdx());
/*작업하다가 말았음*/
//            System.out.println("board2 : " + board);
            boardDao.update(board);
        }
        else {
            throw new IllegalStateException("유저가 존재하지 않습니다.");
        }
    }

    @Override
    public void deleteMember(int idx) {

    }
}
