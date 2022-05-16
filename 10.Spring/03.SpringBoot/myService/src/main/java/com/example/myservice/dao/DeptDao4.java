package com.example.myservice.dao;

import com.example.myservice.model.Dept3;
import com.example.myservice.model.Dept4;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * packageName : com.example.myservice.dao
 * fileName : DeptDao3
 * author : ds
 * date : 2022-05-13
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-13         ds          최초 생성
 */
@Mapper
public interface DeptDao4 {
    List<Dept4> selectAll();

    void insert(Dept4 dept);
}
