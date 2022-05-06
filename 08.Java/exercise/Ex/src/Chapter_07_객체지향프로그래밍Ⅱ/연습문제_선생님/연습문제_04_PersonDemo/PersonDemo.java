package Chapter_07_객체지향프로그래밍Ⅱ.연습문제_선생님.연습문제_04_PersonDemo;

public class PersonDemo {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//문제 1: Person 클래스를 만들고
		//멤버 변수는 name : ""
		//			age : 0
		//		  email : ""
		//setter 이용해서 아래 값을 저장
		//객체 p1 : name = "홍길동",
		//         age = 23
		//         email = "hong@gmail.com"
		//객체 p2 : name = "김유신",
		//         age = 44
		//         email = "kim@gmail.com"
		//출력 : getter 이용해서 print 출력
		
		Person p1 = new Person();
		p1.setName("홍길동");
		p1.setAge(23);
		p1.setEmail("hong@gmail.com");
		
		System.out.println(p1.getName());
		System.out.println(p1.getAge());
		System.out.println(p1.getEmail());
		
		System.out.println("---------------------------------------");
		
		Person p2 = new Person();
		p2.setName("김유신");
		p2.setAge(44);
		p2.setEmail("kim@gmail.com");
		
		System.out.println(p2.getName());
		System.out.println(p2.getAge());
		System.out.println(p2.getEmail());
		
		
	}

}
