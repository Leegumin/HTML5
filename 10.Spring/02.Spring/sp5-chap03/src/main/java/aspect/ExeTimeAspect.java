package aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

/**
 * packageName : aspect
 * fileName : ExeTimeAspect
 * author : ds
 * date : 2022-05-12
 * description : 스프링 공통 클래스
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-12         ds          최초 생성
 */
// @Aspect : 공통 클래스로 등록하는 어노테이션
@Aspect
public class ExeTimeAspect {

    // 빈 메소드
    // @Pointcut() : @Around 매개변수로 들어가기 위한 위치 표시
    // 공통메소드 measure()가 적용될 위치
    // 매개변수 : execution 실행
    // execution( 수식어(public) 리턴타입(*) 클래스이름(chap07) 메소드이름(매개변수이름)(..*(..))
    // .. : 0개 이상, * : 모든 값
    // @Pointcut을 쓰기 싫으면 @Around("execution(public * chap07..*(..))") 형태로 써도 되는데
    // 개수 많아지면 번거로움
    @Pointcut("execution(public * chap07..*(..))")
    private void publicTarget() {
    }

    // @Around : 공통 메소드를 언제 호출할지 나타내는 어노테이션
    // 시작 시간 공통함수 >> 업무로직 호출(팩토리얼 메소드 호출) >> 끝 시간 공통함수
    // ProceedingJoinPoint : 스프링 프록시
    // 프록시(Proxy) : 진짜를 대신해서 가짜가 진짜 행세를 하는 클래스
    // 사용이유 1) 진짜 클래스나 메소드 이름을 노출시키기 싫을 때
    //        2) 진짜의 일부 기능을 미리 사용할 필요가 있을 때
    @Around("publicTarget()")
    public Object measure(ProceedingJoinPoint joinPoint) throws Throwable {
        long start = System.nanoTime(); // 나노시간 측정
        try {
            // proceed() : 진짜 업무 (팩토리얼 계산 메소드) 메소드가 호출됨
            Object result = joinPoint.proceed();
            return result;
        }
        finally {
            // 나노시간 측정 끝
            long end = System.nanoTime();
            System.out.println("(스프링 공통함수)실행시간 : " + (end - start));
        }
    }
}
