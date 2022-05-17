package chap02;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * packageName : chap02
 * fileName : AppContext
 * author : gumin
 * date : 2022-05-17
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-17         gumin          최초 생성
 */
// @Configuration : 해당 클래스를 스프링 설정 클래스로 지정 
@Configuration
public class AppContext {
    
    // @Bean : 스프링이 생성하는 객체, 해당 어노테이션을 메서드에 붙이면 해당 메서드가 생성한
    // 객체를 스프링이 관리하는 빈 객체로 등록함
    // 어노테이션을 붙인 메서드의 이름은 빈 객체를 구분할 때 사용됨
    @Bean
    public Greeter greeter(){
        Greeter g = new Greeter();
        g.setFormat("%s, 안녕하세요!");
        return g;
    }
}
