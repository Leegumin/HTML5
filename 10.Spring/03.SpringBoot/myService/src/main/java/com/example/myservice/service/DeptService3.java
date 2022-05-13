package com.example.myservice.service;

import com.example.myservice.model.Dept3;

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
public interface DeptService3 {

    public List<Dept3> selectAll();
    void insertMember(Dept3 dept);
}
