package Chapter_09_java_lang패키지와_유용한클래스.예제.예제_13_Math의메서드;

// 메서드를 사용하기 위한 임포트
import static java.lang.Math.*;
import static java.lang.System.*;

public class Math의메서드 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// round -> 반올림 / 기본 반환값 정수
		// rint -> 반올림 / 기본 반환값 실수
		// ceil -> 올림
		// floor -> 버림

		double val = 90.7552;
		out.println("round(" + val + ")=" + round(val)); // 반올림

		val *= 100;
		out.println("round(" + val + ")=" + round(val)); // 반올림

		out.println("round(" + val + ")/100=" + round(val) / 100); // 반올림
		out.println("round(" + val + ")/100.0=" + round(val) / 100.0); // 반올림
		out.println();
		out.printf("ceil(%3.1f)=%3.1f%n", 1.1, ceil(1.1)); // 올림
		out.printf("floor(%3.1f)=%3.1f%n", 1.5, floor(1.5)); // 버림
		out.printf("round(%3.1f)=%d%n", 1.1, round(1.1)); // 반올림
		out.printf("round(%3.1f)=%d%n", 1.5, round(1.5)); // 반올림
		out.printf("rint(%3.1f)=%f%n", 1.5, rint(1.5)); // 반올림
		out.printf("round(%3.1f)=%d%n", -1.5, round(-1.5)); // 반올림
		out.printf("rint(%3.1f)=%f%n", -1.5, rint(-1.5)); // 반올림
		out.printf("ceil(%3.1f)=%f%n", -1.5, ceil(-1.5)); // 올림
		out.printf("floor(%3.1f)=%f%n", -1.5, floor(-1.5)); // 버림
	}

}
