package com.example.myservice.dao;

import com.example.myservice.model.Dept2;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * packageName : com.example.myservice.dao
 * fileName : DeptDao2
 * author : ds
 * date : 2022-05-13
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-13         ds          최초 생성
 */
@Mapper
public interface DeptDao2 {
    List<Dept2> selectAll();

    Dept2 selectById(int dno);

    void insert(Dept2 dept);

    void update(Dept2 dept);

    void delete(int dno);
}
