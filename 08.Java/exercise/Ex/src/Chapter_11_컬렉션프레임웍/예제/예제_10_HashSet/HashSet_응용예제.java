package Chapter_11_컬렉션프레임웍.예제.예제_10_HashSet;

import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class HashSet_응용예제 {

	public static void main(String[] args) {
		Set set = new HashSet();

		// 6개의 1부터 45까지의 무작위 숫자를 추출하여 set에 밀어넣음
		for (int i = 0; set.size() < 6; i++) {
			// 1부터 45까지의 무작위 숫자를 추출
			int num = (int)(Math.random()*45)+1;
			
			// 무작위로 추출된 숫자 추가
			// set에 숫자가 들어갈 때 증복이 이루어지면 추가가 되지 않기 때문에 set.size()가 6이 될 때까지 실행됨
			set.add(new Integer(num));
		}
		
		// 무작위 추출된 숫자가 들어간 set을 LinkedList로 정의 -> Collections.sort는 List인터페이스 타입을 필요로하기 때문임
		List list = new LinkedList(set);
		// 번호를 크기 순으로 정렬
		Collections.sort(list);
		
		// 다른 정렬 방법
		// Arrays.sort(list)
		
		System.out.println(list);
	}

}
