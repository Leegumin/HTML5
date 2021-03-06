package Chapter_11_컬렉션프레임웍.예제.예제_01_ArrayList;

import java.util.*;

public class ex_1 {

	static void print(ArrayList list1, ArrayList list2) {
		System.out.println("list1 : " + list1);
		System.out.println("list2 : " + list2);
		System.out.println("=================================");
	}

	public static void main(String[] args) {

		// 크기가 10인 배열을 만든다.
		ArrayList list1 = new ArrayList(10);

		// 항상 DB, 자료구조(Collection) : CRUD
		// C : Create ( 자료에 넣기 )
		// R : Read ( 자료를 읽기 )
		// U : Update ( 일부 자료를 수정하기 )
		// D : Deleate ( 자료를 삭제하기 )

		// ArrayList -> 자료 구조에 C : Create
		list1.add(new Integer(5));
		list1.add(new Integer(4));
		list1.add(new Integer(2));
		list1.add(new Integer(0));
		list1.add(new Integer(1));
		list1.add(new Integer(3));

		// subList(a, b) -> a ~ b(인덱스번호)까지 포함되는 값을 반환한다.
		ArrayList list2 = new ArrayList(list1.subList(1, 4));
		print(list1, list2);

		Collections.sort(list1); // list1과 list2를 정렬한다
		Collections.sort(list2); // Collections.sort(List 1)
		print(list1, list2);

		System.out.println("list1.containsAll(list2) : " + list1.containsAll(list2));

		list2.add("B");
		list2.add("C");
		list2.add(3, "A"); // 인덱스가 3인 곳에 "A"를 추가
		print(list1, list2);

		// set : U(Update)
		// 인덱스 3인 곳의 요소를 "AA"로 수정
		list2.set(3, "AA");
		print(list1, list2);

		// list1에서 list2와 겹치는 부분만 남기고 나머지는 삭제한다.
		System.out.println("list1.retainAll(list2) : " + list1.retainAll(list2));

		print(list1, list2);

		
		// get : R (Read)
		// list2에서 list1에 포함된 객체들을 삭제한다.
		for (int i = list2.size() - 1; i >= 0; i--) {
			if (list1.contains(list2.get(i)))
				// D : D (Delete)
				list2.remove(i); // 인덱스가 i인 곳에 저장된 요소를 삭제
		}
		print(list1, list2);
	}
}
