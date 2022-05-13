package com.example.myservice.service;

import com.example.myservice.dao.DeptDao2;
import com.example.myservice.model.Dept2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * packageName : com.example.myservice.service
 * fileName : DeptServiceImpl2
 * author : ds
 * date : 2022-05-13
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-13         ds          최초 생성
 */
@Service
public class DeptServiceImpl2 implements DeptService2 {

    @Autowired
    DeptDao2 deptDao2;

    @Override
    public List<Dept2> selectAll() {
        return deptDao2.selectAll();
    }

    @Override
    public void insertMember(Dept2 dept2) {
        deptDao2.insert(dept2);
    }
}
