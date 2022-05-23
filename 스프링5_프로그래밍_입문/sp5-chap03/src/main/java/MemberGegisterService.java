import org.apache.ibatis.javassist.bytecode.DuplicateMemberException;

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
public class MemberGegisterService {
    private MemberDao memberDao;

    public MemberRegisterService(MemberDao memberDao){
        this.memberDao = memberDao;
    }

    public Long regist(RegisterRequest req){
        Member member = memberDao.selectByEmail(req.getEmail());
        if(member !=null){
            throw new DuplicateMemberException("dup email " + req.getEmail());
        }
        Member newMember = new Member(
                req.getEmail(), req.getPassword(), req.getName(), LocalDateTime.now());
        )
        memberDao.insert(newMember);
        return newMember.getId();
    }
}
