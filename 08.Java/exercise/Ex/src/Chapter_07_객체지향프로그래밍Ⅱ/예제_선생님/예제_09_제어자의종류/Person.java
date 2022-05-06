package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_09_제어자의종류;

public class Person {
	/* 다른 클래스에서 접근 불가 */
	private int weight;
	/* default, 같은 패키지에 있는 클래스에게만 공개 */
	int age;
	/* 상속받는 클래스만 공개 */
	protected int height;
	/* 다른 패키지를 포함해서 모두 공개 */
	public String name;

	/* setter */
	public void setWeight(int weight) {
		this.weight = weight;
	}

	/* getter */
	public int getWeight() {
		return weight;
	}
}
