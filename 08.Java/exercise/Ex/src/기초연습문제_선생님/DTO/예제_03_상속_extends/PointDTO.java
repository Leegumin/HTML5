package 기초연습문제_선생님.DTO.예제_03_상속_extends;

public class PointDTO {
	int x; // x좌표
	int y; // y좌표

	
	// 좌표 출력
	public void showPoint() {
		System.out.println("x : " + x);
		System.out.println("y : " + y);
	}
	
	// 좌표 설정
	public void set(int x, int y) {
		this.x = x;
		this.y = y;
	}
}
