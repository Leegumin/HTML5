package Chapter_11_컬렉션프레임웍.예제.예제_11_HashSet_응용예제;

import java.util.HashSet;
import java.util.Objects;

class Person {
	String name;
	int age;
	
	public Person(String name, int age) {
		this.name = name;
		this.age = age;
	}
	
	@Override
	public String toString() {
		return name + " : " + age;
	}

	// Person 객체의 중복제거를 위한 메서드
	// HashSEt의 add 메서드는 새로운 요소를 추가하기 전에
	// 기존에 저장된 요소와 같은 것인지 판별하기 위해
	// equals()와 hashCode()를 호출함
	// 때문에 둘 다 목적에 맞게 오버라이딩 하면 됨
	@Override
	public boolean equals(Object obj) {
		// Person이 아니라면 메서드 false를 반환하여 탈출(종료)
		if(!(obj instanceof Person)) return false;
		// obj 형변환
		Person p = (Person)obj;
		// 이름이 같고 나이가 같은 경우 참
		return name.equals(p.name) && age == p.age;
	}

	@Override
	public int hashCode() {
		return Objects.hash(name, age);
	}
}

public class HashSet_응용예제 {
	
	public static void main(String[] args) {
		HashSet set = new HashSet();
		
		// "abc" 추가
		set.add("abc");
		// "abc" 추가 -> 위에 것과 중복되므로 추가 안됨
		set.add("abc");
		// Person 객체 추가
		set.add(new Person("David", 10));
		// Person 객체 추가 -> 위에 것과 중복되는 값을 가지나, 메모리주소가 다르므로 다른 요소
		set.add(new Person("David", 10));
		
		System.out.println(set);
	}
}


