package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_04_PersonDemo;

public class Person {
	private String name;
	private int age;
	private String email;

	public Person () {
		name = "";
		age = 0;
		email = "";
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
