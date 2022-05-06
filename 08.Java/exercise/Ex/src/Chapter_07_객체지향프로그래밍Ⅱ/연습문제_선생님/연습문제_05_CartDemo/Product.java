package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_05_CartDemo;

public class Product extends Cart {
	private String no;
	private String name;
	private int price;
	private double discountRate;
	
	public Product() {
	}
	
	public Product(String no, String name, int price, double discountRate) {
		this.no = no;
		this.name = name;
		this.price = price;
		this.discountRate = discountRate;
	}
	public void info(){
		System.out.printf("모델번호 : %s, 제품명 : %s, 가격 : %d, 할인율 : %.3f%n", this.no, this.name, this.price, this.discountRate);
	}
}
