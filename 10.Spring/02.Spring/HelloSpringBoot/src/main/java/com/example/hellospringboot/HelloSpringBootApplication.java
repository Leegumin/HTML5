package com.example.hellospringboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

// @SpringBootApplication : @Configuration, @ComponentScan, @EnableAutoConfiguration 3개 묶음
// @Configuration : 스프링에 등록될 객체들을 위한 자바 설정 파일( @Bean 주로 사용 )
// @ComponentScan : @Component 붙은 클래스들을 검색해서 자동으로 @Bean에 등록
// @EnableAutoConfiguration : 스프링에서 내부 라이브러리들을 등록해줌
@SpringBootApplication
// Rest API 작성을 위한 어노테이션
// 컨트롤러 역할 : 메뉴만들기, URL 이동 처리 ( Vue 라우터 : 메뉴 )
// 비교)
// @Controller : 일반 JSP / 타임리프 파일 로딩
// @RestController : JSON
@RestController
public class HelloSpringBootApplication {
    public static void main(String[] args) {
        SpringApplication.run(HelloSpringBootApplication.class, args);
    }

    // @GetMapping : Get 방식(요청)에 /hello URL 연결(라우팅, 메뉴달기)
    // 뜻 : Get 방식으로 메뉴를 연결하겠다
    // Get : Select
    // 예시)  http://loacalhost:8080/hello/1
    // 예시)  http://loacalhost:8080/hello?myName=tae
    // URL : http://localhost:8080 -> 도메인 주소
    //       hello => 메뉴
    //       1 => 1번 데이터 값
    //       tae => myName의 데이터 값 tae
    //       myName => parameter( 매개변수 )
    //       defaultValue => 웹 매개변수 값이 null이면 디폴트 값으로 대체
    @GetMapping("/hello")
    public String sayHello(
            @RequestParam(value = "myName", defaultValue = "World")
            String name) {
        // String.format : printf("")와 사용 방식은 똑같음( name가 %s에 들어간다는 소리 )
        return String.format("Hello %s!", name);
    }
}
