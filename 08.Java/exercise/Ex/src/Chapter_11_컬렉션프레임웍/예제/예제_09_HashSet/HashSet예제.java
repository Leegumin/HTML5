package Chapter_11_컬렉션프레임웍.예제.예제_09_HashSet;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class HashSet예제 {

	public static void main(String[] args) {
		Object[] objArr = {"1", new Integer(1), "2", "2", "3", "3", "4", "4", "4"};
		Set set = new HashSet();
		
		for (int i = 0; i < objArr.length; i++) {
			set.add(objArr[i]); //HashSet에 objArr의 요소를 저장한다.
		}
		
		// HashSet에 저장된 요소들을 출력함
		System.out.println(set);
		
		// HashSet에 저장된 요소들을 출력함(Iterator 이용)
		Iterator it = set.iterator();
		
		while(it.hasNext()) {
			System.out.println(it.next());
		}
		
		// 형태, 메모리주소가 같은 숫자중복은 전부 사라짐
		// 형태, 메모리주소가 다른 1은 다른 것으로 인식해서 출력
	}

}
