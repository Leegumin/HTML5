package 기초연습문제_선생님.기초연습문제.문제_11;

import java.util.Scanner;

public class 문제11 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		String[] arSubject = { "java", "Python", "Android", "JSP", "HTML" };
		int[] arScore = { 95, 88, 76, 62, 55 };

		do {
			String subj = sc.next();
			
			if (subj.equals("그만")) {
				break;
			}
			else if (subj.equals("java")) {
				System.out.println("java : " + arScore[0]);
			}
			else if (subj.equals("Python")) {
				System.out.println("Python : " + arScore[1]);
			}
			else if (subj.equals("Android")) {
				System.out.println("Android : " + arScore[2]);
			}
			else if (subj.equals("JSP")) {
				System.out.println("JSP : " + arScore[3]);
			}
			else if (subj.equals("HTML")) {
				System.out.println("HTML : " + arScore[4]);
			}

		} while (true);
	}
}
