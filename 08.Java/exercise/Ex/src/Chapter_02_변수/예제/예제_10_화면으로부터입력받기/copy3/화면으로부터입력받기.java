package Chapter_02_변수.예제.예제_10_화면으로부터입력받기.copy3;

/*컨트롤+쉬프트+O -> 자동 임포트 생성, 중복, 쓸모없는 임포트 정리 등*/
import java.util.Scanner;

public class 화면으로부터입력받기 {
	public static void main(String args[]) {
		/* Scanner는 클래스 scanner은 객체명 new Scanner(System.in)은 Scanner클래스의 객체를 생성 */
		Scanner scanner = new Scanner(System.in);

		System.out.print("두자리 정수를 하나 입력해주세요.>");
		/* 입력받은 내용을 input에 저장, 콘솔 입력에서 문자열을 한 라인을 입력받음 */
		String input = scanner.nextLine();
		/* 입력받은 내용을 input에 저장, 콘솔 입력에서 문자열을 공백까지 한 단어를 입력 받음 */
//		String input = scanner.next();
		/* 입력받은 내용을 int(정수) 타입의 값으로 변환 */
		int num = Integer.parseInt(input);
		/* 입력받은 내용을 Float(실수) 타입의 값으로 변환 */
		/* int num = Integer.parseFloat(input); */

		/* 혹은 바로 정수를 입력받아서 변수 num에 저장 */
//		int num = scanner.nextInt();

		System.out.println("입력내용 :" + input);
		System.out.printf("num=%d%n", num);
		scanner.close();
	}
}
