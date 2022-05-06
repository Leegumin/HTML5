package Exam_2022_04_27.Exam_03;

public class for_if_출력 {

	public static void main(String[] args) {
		for (int i = 1; i <= 10; i++) {
			if (i % 2 == 1) {
				continue;
			}
			System.out.print(i + " ");
		}
	}

}
