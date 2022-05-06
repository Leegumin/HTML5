package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_10_부모메서드호출;

public class Parent_Child extends Parent {
	private int r = 300;
	
	public int getR() {
		return r;
	}

	public void setR(int r) {
		this.r = r;
	}

	public void display() {
		System.out.println(getY());		
		System.out.println(getX());		
		System.out.println("r = " + this.r);
	}
}
