package com.example.myservice.service;

import com.example.myservice.dao.EmpDao;
import com.example.myservice.dao.Tb_MemberDao;
import com.example.myservice.model.Emp;
import com.example.myservice.model.Tb_Member;
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
public class Tb_MemberServiceImpl implements Tb_MemberService {
    @Autowired
    Tb_MemberDao memberDao;

    @Override
    public List<Tb_Member> selectAll() {
        return memberDao.selectAll();
    }

    @Override
    public void insertMember(Tb_Member member) {
        memberDao.insert(member);
    }
}
