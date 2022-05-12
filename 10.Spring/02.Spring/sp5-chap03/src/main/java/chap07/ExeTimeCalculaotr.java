package chap07;

/**
 * packageName : chap07
 * fileName : ExeTime
 * author : ds
 * date : 2022-05-11
 * description : 팩토리얼 측정할 때 시간을 나노시간으로 측정, 공통클래스
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-11         ds          최초 생성
 */
public class ExeTimeCalculaotr implements Calculator {

    private Calculator delegate; // 인터페이스

    // @AutoWire : DI 자동 주입
    // 1) 생성자에게 걸 수 있음( 거는 위치 : 메소드 바로 위쪽 )
    // 2) setter에도 걸 수 있음( 거는 위치 : 메소드 바로 위쪽 )
    // 3) 맴버변수에도 걸 수 있음( 맴버변수 위에 달아줌 )

    // 외부에서 객체 생성하여 생성자 매개변수로 전달 : DI
    // 생성자의 매개변수를 통해 전달 ( 의존성 주입 : DI )
    public ExeTimeCalculaotr(Calculator delegate) {
        this.delegate = delegate;
    }

    @Override
    public long factorial(long num) {

        // 1) 실행전 시간 :  나노시간 측정
        long start = System.nanoTime(); //  나노시간 측정
        // 2) 팩토리얼 실행 ( 자식 클래스의 진짜 팩토리얼 함수 실행 부분 )
        long result = delegate.factorial(num);
        // 3) 실행후 시간 :  나노시간 측정
        long end = System.nanoTime(); //  나노시간 측정

        // 4) 실행 시간 출력
        System.out.println("(공통함수)factorial : " + (end - start));
        return 0;
    }
}
