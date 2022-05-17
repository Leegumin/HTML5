package com.example.myservice.service;

import com.example.myservice.dao.EmpDao;
import com.example.myservice.dao.Tb_MemberDao;
import com.example.myservice.model.Dept2;
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

    @Override
    public void updateMember(String userId, Tb_Member updateData) {
        Tb_Member member = memberDao.selectById(userId);
        System.out.println("member : " + member);

        if (member != null) {
            member.setUserName(updateData.getUserName());
            member.setUserAuth(updateData.getUserAuth());
            member.setAppendDate(updateData.getAppendDate());
            member.setUpdateDate(updateData.getUpdateDate());

            System.out.println("member2 : " + member);
            memberDao.update(member);
        }
        else {
            throw new IllegalStateException("유저가 존재하지 않습니다.");
        }
    }

    @Override
    public void deleteMember(String userId) {
        Tb_Member member = memberDao.selectById(userId);
        if (member != null) {
            memberDao.delete(userId);
        }
        else {
            throw new IllegalStateException("유저가 존재하지 않습니다.");
        }
    }
}
