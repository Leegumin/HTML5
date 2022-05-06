package Chapter_13_쓰레드.예제.예제_04_쓰레드의_블락킹;

import javax.swing.JOptionPane;

public class 쓰레드블락킹 {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		
		String input = JOptionPane.showInputDialog("아무 값이나 입력하세요.");
		System.out.println("입력하신 값은 " + input + "입니다.");
		
		for (int i = 10; i > 0; i--) {
			System.out.println(i);
		}
		try {
			Thread.sleep(1000); // 1초의 시간을 지연시킴
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}