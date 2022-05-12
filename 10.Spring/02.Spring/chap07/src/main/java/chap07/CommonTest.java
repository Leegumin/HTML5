package chap07;

/**
 * packageName : chap07
 * fileName : CommonTest
 * author : ds
 * date : 2022-05-11
 * description : 팩토리얼 공통 클래스 테스트 : 실행시간이 잘 출력되는지?
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-11         ds          최초 생성
 */
public class CommonTest {
    public static void main(String[] args) {
        ExeTimeCalculaotr etcal = new ExeTimeCalculaotr(new ImpeCalculator());

        System.out.println(etcal.factorial(20000));
    }
}
