package Chapter_12_지네릭스_열거형_애너테이션.예제.예제_01_지네릭타입과다형성;

import java.util.ArrayList;

class Product {}
class Tv extends Product {}
class Audio extends Product {}

public class 지네릭타입과다형성 {

	public static void main(String[] args) {
		ArrayList<Product> productList = new ArrayList<Product>();
		ArrayList<Tv> tvList = new ArrayList<Tv>();
		// 에러
//		ArrayList<Product> tvList = new ArrayList<Tv>();
		
		// ok.다형성
//		List<Tv> tvList = new ArrayList<Tv>();
		
		// 향상된 배열 : ArrayList 자료 넣기
//		Tv temp = new Tv();
//		productList.add(temp);
		productList.add(new Tv());
		productList.add(new Audio());
		
		tvList.add(new Tv());
		tvList.add(new Tv());
		
		printAll(productList);
		// 컴파일 에러 발생 -> tvList는 <Tv> 타입으로 강제되나 printAll의 매개변수는 <Product> 타입으로 강제되어 오류가 남
//		printAll(tvList);
		
	}
	// 전역 메소드 : static
	public static void printAll(ArrayList<Product> list) {
		// 향상된 for문
		// list 자료가 없을때까지 반복문이 실행
		for (Product p : list) {
			System.out.println(p);
		}
	}
}
