package 기초연습문제_선생님.DTO.예제_03_상속_extends;

public class ColorPointDTO extends PointDTO {
	String color; // 컬러 색상

	// 컬러 색상, 정의좌표 출력
	@Override
	public void showPoint() {
		System.out.println(color);
		super.showPoint();
	}

	// 색상 설정
	public void setColor(String color) {
		this.color = color;
	}

	

}
