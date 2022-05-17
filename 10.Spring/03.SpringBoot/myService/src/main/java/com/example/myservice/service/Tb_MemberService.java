package com.example.myservice.service;

<<<<<<< HEAD
import com.example.myservice.model.Dept2;
=======
>>>>>>> 3d17d0532bef7097ac8cdec80a3512bfa026bf67
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
<<<<<<< HEAD

    void updateMember(String userId, Tb_Member updateData);

    void deleteMember(String userId);
=======
>>>>>>> 3d17d0532bef7097ac8cdec80a3512bfa026bf67
}
