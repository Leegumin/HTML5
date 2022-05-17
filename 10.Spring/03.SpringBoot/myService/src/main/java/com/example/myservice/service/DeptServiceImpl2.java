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
    DeptDao2 deptDao;

    @Override
    public List<Dept2> selectAll() {
        return deptDao.selectAll();
    }

    @Override
    public void insertMember(Dept2 dept) {
        deptDao.insert(dept);
    }

    @Override
    public void updateMember(int dno, Dept2 updateDept) {
        Dept2 dept = deptDao.selectById(dno);

        if (dept != null) {
            dept.setDname(updateDept.getDname());
            dept.setLoc(updateDept.getLoc());
            deptDao.update(dept);
        }
        else {
            throw new IllegalStateException("부서가 존재하지 않습니다.");
        }
    }

    @Override
    public void deleteMember(int dno) {
        Dept2 dept = deptDao.selectById(dno);
        if (dept != null) {
            deptDao.delete(dno);
        }
        else {
            throw new IllegalStateException("부서가 존재하지 않습니다.");
        }
    }
}
