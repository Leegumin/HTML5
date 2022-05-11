package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import spring.ChangePasswordService;
import spring.MemberDao;
import spring.MemberRegisterService;

/**
 * packageName : config
 * fileName : AppCtx
 * author : ds
 * date : 2022-05-11
 * description : 스프링 환경 설정 자바 클래스
 * 과거에는 환경설정 -> xml 파일에서 했음 (현재는 자바에서 함)
 * 스프링 : 객체를 생성, 소멸시키는 작업을 대행해줌
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-11         ds          최초 생성
 */
// 환경설정을 위한 어노테이션 -> 스프링 설정파일로 바꿔주는 어노테이션 @Configuration
// 자동으로 Bean을 검색해주는 어노테이션 -> @CommponenScan(범위)
@Configuration
@ComponentScan(basePackages = {"spring"})
public class AppCtx {

//    @ComponentScan을 통해 자동으로 @Bean으로 스프링에 등록됨
    // @Bean : 스프링에 컴포넌트 등록
    // memberDao 객체 생성
//    @Bean
//    public MemberDao memberDao() {
//        return new MemberDao();
//    }

//    @ComponentScan을 통해 자동으로 @Bean으로 스프링에 등록됨
    // memberRegSvc : 멤버 등록 서비스 객체를 생성
    // @Bean : 스프링에 컴포넌트 객체로 등록
//    @Bean
//    public MemberRegisterService memberRegSvc() {
//        // 매개변수로 memberDao 객체를 전달 : DI
//        return new MemberRegisterService(memberDao());
//    }

//    @ComponentScan을 통해 자동으로 @Bean으로 스프링에 등록됨
//    @Bean
//    public ChangePasswordService changePwdSvc() {
//// AppCtx의 @AutoWire 어노테이션 작동으로 알아서 처리됨 필요 없음
//        // 패스워드 변경 서비스 객체 생성
//        ChangePasswordService pwdSvc = new ChangePasswordService();
//
//        // 패스워드 변경 서비스 객체의 setter 호출 : 정보가 저장됨
//        // setter DI
////        pwdSvc.setMemberDao(memberDao());
//
//        return pwdSvc;
//    }
}
