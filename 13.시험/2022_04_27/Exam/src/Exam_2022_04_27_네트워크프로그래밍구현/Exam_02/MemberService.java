package Exam_2022_04_27_네트워크프로그래밍구현.Exam_02;

public interface MemberService {
	// 회원가입
	public void memberJoin(String member);
	// 아이디 중복 검사
	public void idCheck(String memberId);
	// 로그인
	public void memberLogin(String member);
	// 주문자 정보
	public void getMemberInfo(String memberId);

}
