package com.example.myservice.service;

import com.example.myservice.model.Tb_Board;
import com.example.myservice.model.Tb_Member;

import java.util.List;

/**
 * packageName : com.example.myservice.service
 * fileName : DeptService3
 * author : ds
 * date : 2022-05-13
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-13         ds          최초 생성
 */
public interface Tb_BoardService {

    public List<Tb_Board> selectAll();
    void insertMember(Tb_Board board);
<<<<<<< HEAD

    void updateMember(int idx, Tb_Board updateData);

    void deleteMember(int idx);
=======
>>>>>>> 3d17d0532bef7097ac8cdec80a3512bfa026bf67
}
