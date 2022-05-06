package Chapter_06_객체지향프로그래밍.연습문제_선생님.연습문제_07;

public class Person {
	String name;
	int height;
	int weight;
	
	/* 오른쪽 마우스 클릭 -> source -> general getter, setter -> select All */
	Person(String name, int height, int weight){
		this.name = name;
		this.height = height;
		this.weight = weight;
	}

	/* 변수를 직접적으로 호출하지 않고 get, set을 통해서 호출 */
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}
}
