package 기초연습문제_선생님.DTO.예제_06_상속_extends;

public abstract class Figure {
	int x;
	int y;
	
	public void draw(String figure) {
		System.out.println(figure);
	}
	
	public abstract void draw();
}
