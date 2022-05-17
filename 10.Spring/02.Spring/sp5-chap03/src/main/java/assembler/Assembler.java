package assembler;

import spring.ChangePasswordService;
import spring.MemberDao;
import spring.MemberRegisterService;

/**
 * packageName : assembler
 * fileName : Assembler
 * author : ds
 * date : 2022-05-11
 * description : 정의된 클래스를 생성해서 조립하는 클래스
 * Spring으로 대체됐기 때문에 필요 없음(보관용)
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-11         ds          최초 생성
 */
public class Assembler {
    // 객체 생성을 위한 멤버 변수 정의
    private MemberDao             memberDao; // dao 클래스
    private MemberRegisterService reqSvc; // 회원등록service 클래스
    private ChangePasswordService pwdSvc; // 패스워드service 클래스

    // 기본 생성자
    // 다른 클래스들을 모두 생성함
    public Assembler() {
        // 외부에서 memberDao 객체 생성
        // memberDao가 MemberCachedDao로 수정이 된다면 -> memberDao = new MemberCachedDao(); 로만 수정하면 됨
        // 만약, 매개변수가 있는 메소드 형태가 아니라면
        // -> 각각의 클래스 소스를 열어서 MemberDao()를 MemberCachedDao()로 수정해야함
        memberDao = new MemberDao();
        // 매개변수가 있는 생성자 ( 다른 클래스 객체를 전달 ) : 생성자 DI
        reqSvc = new MemberRegisterService(memberDao);
        pwdSvc = new ChangePasswordService();
        // 매개변수가 있는 setter ( 다른 클래스 객체를 전달 ) : setter DI
        pwdSvc.setMemberDao(memberDao);
    }

    public MemberDao getMemberDao() {
        return memberDao;
    }

    public MemberRegisterService getMemberRegisterService() {
        return reqSvc;
    }

    public ChangePasswordService getChangePasswordService() {
        return pwdSvc;
    }
}
