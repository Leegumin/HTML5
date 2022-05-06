package Chapter_06_객체지향프로그래밍.연습문제_선생님.연습문제_10;

public class JBank {
	String name;
	int money;

	JBank() {
	}

	JBank(String name, int money) {
		this.name = name;
		this.money = money;
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
