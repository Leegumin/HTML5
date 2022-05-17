package chap02;
// 자바 설정에서 정보를 읽어와 빈 객체를 생성하고 관리함
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

/**
 * packageName : chap02
 * fileName : Main
 * author : gumin
 * date : 2022-05-17
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-17         gumin          최초 생성
 */
public class Main {
    public static void main(String[] args) {
        // AnnotationConfigApplicationContext 객체를 생성할 때 앞서 작성한 AppContext 클래스를 생성자 파라미터로 전달함
        // AppContext에 정의한 @Bean 설정 정보를 읽어와 Greeter 객체를 생성하고 초기화함
        AnnotationConfigApplicationContext ctx =
                                           new AnnotationConfigApplicationContext(AppContext.class);
        // AppContext에서 등록한 greeter이란 이름의 Bean 객체를 불러옴.
        // 생성한 객체의 리턴 타입은 Greeter 클래스 객체
        // getBean("Bean에 등록된 이름", 검색할 Bean 객체의 타입)
        Greeter g = ctx.getBean("greeter", Greeter.class);
        // Greeter 객체의 greet() 메서드를 실행함
        String msg = g.greet("스프링");
        // 전체적인 순서
        // 1. getBean으로 "greeter"이름으로 등록된 Greeter 클래스 타입을 리턴하는 Bean을 검색하여 불러와 'g'로 저장함
        // 2. AppContext에서 등록된 "greeter"이름의 Bean 안에는 Greeter 클래스 타입으로 초기화된 'g'가 있으며
        // g.setFormat("%s, 안녕하세요!"); 코드를 통해 Greeter 클래스 안에 정의된 setFormat() 메서드를 실행시켜 Greeter의 변수 format에 저장됨
        // 3. greet(String guest)에 저장된 return String.format(format, guest);를 해석해보자면
        // String.format("%s, 안녕하세요!", guest); -> 즉 %s 위치에 guest값이 들어가면서 최종적으로 msg가 완성됨
        System.out.println(msg);
        ctx.close();
    }
}
