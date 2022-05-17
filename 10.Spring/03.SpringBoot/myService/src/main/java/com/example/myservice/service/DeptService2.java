package com.example.myservice.service;

import com.example.myservice.model.Dept2;

import java.util.List;

/**
 * packageName : com.example.myservice.service
 * fileName : DeptService2
 * author : ds
 * date : 2022-05-13
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-13         ds          최초 생성
 */
public interface DeptService2 {
    public List<Dept2> selectAll();

<<<<<<< HEAD
    void insertMember(Dept2 dept);

    void updateMember(int dno, Dept2 updateDept);

    void deleteMember(int dno);
=======
    void insertMember(Dept2 dept2);
>>>>>>> 3d17d0532bef7097ac8cdec80a3512bfa026bf67
}
