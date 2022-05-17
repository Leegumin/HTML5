package spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

// Dao + Service => 웹개발 할때 설계를 위한 이름 약속 ( Naming Rule )
// XXXService 역할 : 비지니스(업무) 로직이 작성되어 있는 클래스
// XXXDao 활용 + Model ( Member, RegisterMember 클래스 ) 활용 -> 업무로직 작성
@Component
public class MemberRegisterService {
    // Dao 멤버변수로 등록 : CRUD 사용을 위해서 등록
    @Autowired
    private MemberDao memberDao;

    // 기본 생성자 : Dao 객체를 생성( 외부에서 매개변수를 통해 생성 : DI(의존성 주입))
    public MemberRegisterService(MemberDao memberDao) {
        this.memberDao = memberDao;
    }

    // regist : 신규 회원 등록 서비스
    public Long regist(RegisterRequest req) {
        // 이메일(키값)을 가지고 검색하는 메소드를 호출함
        // 반환값(return) : Member 객체가 반환
        Member member = memberDao.selectByEmail(req.getEmail());

        // 기존 회원이 있으면 member 값이 null이 아님 ->  에러 발생시킴
        if(member !=null) {
            throw new DuplicateMemberException("dup email" + req.getEmail());
        }

        // 기존 회원이 없으면(null 값이면) Member 생성자를 호출해서 객체를 생성
        Member newMember = new Member(
                req.getEmail(),req.getPassword(), req.getName(), LocalDateTime.now()
        );

        // 회원등록 메소드를 호출
        memberDao.insert(newMember);
        return newMember.getId();
    }
}
