package assembler;

import spring.ChangePasswordService;
import spring.Member;
import spring.MemberDao;
import spring.MemberRegisterService;

/**
 * packageName : assembler
 * fileName : Assembler2
 * author : gumin
 * date : 2022-05-19
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-19         gumin          최초 생성
 */
public class Assembler2 {
    // *의존 객체 정의 ( null 값 )
    private Member member;
    private MemberDao memberDao;
    private MemberRegisterService memberRegisterService;
    private ChangePasswordService changePasswordService;

    public Assembler2() {
        // *객체 생성 ( 생성자를 호출해야 객체가 생성됨 )
        this.member = new Member();
        this.memberDao = new MemberDao();
        this.memberRegisterService = new MemberRegisterService(memberDao);
        this.changePasswordService = new ChangePasswordService();
        changePasswordService.setMemberDao(memberDao);
    }

    // 의존성 주입
    public Assembler2(Member member, MemberDao memberDao) {
        // *객체 생성 ( 생성자를 호출해야 객체가 생성됨 )
        this.member = member;
        this.memberDao = memberDao;
        this.memberRegisterService = new MemberRegisterService(memberDao);
        this.changePasswordService = new ChangePasswordService();
        changePasswordService.setMemberDao(memberDao);
    }

    // *객체를 받아와서 맴버변수로 넘김
    public Member getMember(){
        return this.member;
    }

    public MemberDao getMemberDao() {
        return memberDao;
    }

    public MemberRegisterService getMemberRegisterService() {
        return memberRegisterService;
    }

    public ChangePasswordService getChangePasswordService() {
        return changePasswordService;
    }
}
