package Chapter_06_객체지향프로그래밍.연습문제_선생님.연습문제_11;

public class Employee {
	String id;
	String name;
	int money;
	
	Employee() {
	}
	Employee(String id, String name, int money) {
		this.id = id;
		this.name = name;
		this.money = money;
	}
	
	public int bonus(int bonus){
		return money+bonus;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	
}
