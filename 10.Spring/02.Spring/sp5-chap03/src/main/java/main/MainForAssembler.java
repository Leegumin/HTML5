package main;

import assembler.Assembler2;
import org.springframework.beans.factory.annotation.Autowired;
import spring.Member;

/**
 * packageName : main
 * fileName : MainForAssembler
 * author : gumin
 * date : 2022-05-19
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-19         gumin          최초 생성
 */
public class MainForAssembler {
    public static void main(String[] args) {
        // 1. 객체 직접 생성
        Member member = new Member();
        long   value  = 1;
        member.setId(value);
        member.setName("강태경");

        System.out.println(member.getId() + " " + member.getName());

        // 2. 객체 의존 생성
        // *Member, MemberDao, MemberRegisterService 객체를 전부 불러올 수 있는 기본 생성자
        Assembler2 assembler2 = new Assembler2();

        // *Member 타입의 member2 변수에 Member객체(assembler2.getMember)를 저장
        Member member2 = assembler2.getMember();
        member2.setId(value);
        member2.setName("이구민");

    }
}
