package 기초연습문제_선생님.DTO.예제_03_상속_extends;

public class BlackPointDTO extends PointDTO {
	private boolean blackYn;

	// 컬러 색상, 정의좌표 출력
	@Override
	public void showPoint() {
		System.out.println(blackYn);
		super.showPoint();
	}

	// 흑백 설정
	public void setblackYn(boolean blackYn) {
		this.blackYn = blackYn;
	}
}
