import org.springframework.context.annotation.AnnotationConfigApplicationContext;

/**
 * packageName : PACKAGE_NAME
 * fileName : Main
 * author : ds
 * date : 2022-05-10
 * description : 스프링 프레임웤에서 실행하는 클래스
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-10         ds          최초 생성
 */
public class Main {
    public static void main(String[] args) {
        // 1. 스프링 프레임워크에 환경설정 파일을 적용 : Bean으로 정의된 메소드가 스프링에 등록됨
        AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext(AppContext.class);

        // 2. 스프링에 등록된 @bean(: 컴포넌트)를 찾아서 실제 메소드를 호출
        // greeter : 싱글톤(전역객체, 공유객체) 형태로 저장됨
        Greeter greeter = ctx.getBean("greeter", Greeter.class);

        //greeter의 메소드인 getFormat() 호출
        System.out.println(greeter.getFormat());

        //스프링 종료
        ctx.close();
    }
}
