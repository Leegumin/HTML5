package com.example.myservice.service;

import com.example.myservice.dao.DeptDao3;
import com.example.myservice.dao.DeptDao4;
import com.example.myservice.model.Dept3;
import com.example.myservice.model.Dept4;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * packageName : com.example.myservice.service
 * fileName : DeptServiceImpl3
 * author : ds
 * date : 2022-05-13
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-13         ds          최초 생성
 */
@Service
public class DeptServiceImpl4 implements DeptService4 {

    @Autowired
    DeptDao4 deptDao4;

    @Override
    public List<Dept4> selectAll() {
        return deptDao4.selectAll();
    }

    @Override
    public void insertMember(Dept4 dept) {
        deptDao4.insert(dept);
    }
}
