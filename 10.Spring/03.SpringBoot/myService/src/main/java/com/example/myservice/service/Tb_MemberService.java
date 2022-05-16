package com.example.myservice.service;

import com.example.myservice.model.Dept4;
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
public interface Tb_MemberService {

    public List<Tb_Member> selectAll();
    void insertMember(Tb_Member member);
}
