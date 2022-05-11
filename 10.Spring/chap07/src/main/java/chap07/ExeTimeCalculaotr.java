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

    // 생성자의 매개변수를 통해
    public ExeTimeCalculaotr(Calculator delegate) {
        this.delegate = delegate;
    }

    @Override
    public long factorial(long num) {

        // 1) 실행전 시간 :  나노시간 측정
        long start = System.nanoTime(); //  나노시간 측정
        // 2) 팩토리얼 실행
        long result = delegate.factorial(num);
        // 3) 실행후 시간 :  나노시간 측정
        long end = System.nanoTime(); //  나노시간 측정

        // 4) 실행 시간 출력
        System.out.println("(공통함수)factorial : " + (end - start));
        return 0;
    }
}
