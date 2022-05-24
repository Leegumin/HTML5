package spring;

import spring.DuplicateMemberException;
import spring.Member;
import spring.MemberDao;
import spring.RegisterRequest;

import java.time.LocalDateTime;

/**
 * packageName : PACKAGE_NAME
 * fileName : MemberGegisterService
 * author : gumin
 * date : 2022-05-22
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-22         gumin          최초 생성
 */
public class MemberRegisterService {
    private MemberDao memberDao;

    public MemberRegisterService(MemberDao memberDao) {
        this.memberDao = memberDao;
    }

    public Long regist(RegisterRequest req) throws DuplicateMemberException {
        Member member = memberDao.selectByEmail(req.getEmail());
        if (member != null) {
            throw new DuplicateMemberException("dup email " + req.getEmail());
        }
        Member newMember = new Member(
                req.getEmail(), req.getPassword(), req.getName(), LocalDateTime.now());

        memberDao.insert(newMember);
        return newMember.getId();
    }
}
