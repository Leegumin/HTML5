package chap07;

/**
 * packageName : chap07
 * fileName : ImpeCalculator
 * author : ds
 * date : 2022-05-11
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-11         ds          최초 생성
 */
public class ImpeCalculator implements Calculator {
    // 팩토리얼 : 지정된 숫자만큼 계속 곱함
    @Override
    public long factorial(long num) {

        // 팩토리얼 결과를 저장할 변수
        long result = 1;

        // 1) 팩토리얼 계산에 필요한 시간을 측정하고자 함
        // 2) 실행 전 미리 시간 측정 : a
        // 3) 실행 종료 후 시간 측정 : b
        // 4) b - a = 실행시간

        // 2) 실행 전 미리 시간 측정 : a
//        long start = System.currentTimeMillis(); // 밀리초(ms) 계산


        // 자동완성 fori
        for (int i = 1; i <= num; i++) {
            result *= i;
        }

        // 3) 실행 종료 후 시간 측정 : b
//        long end = System.currentTimeMillis(); // 밀리초(ms) 계산

        // 4) b - a = 실행시간
//        System.out.println("ImpeCalculator 실행시간 : " + (end - start));

        // 결과 result 반환
        return result;
    }
}
