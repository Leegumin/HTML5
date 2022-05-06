package Chapter_11_컬렉션프레임웍.예제.예제_02_Stack_Queue;

import java.util.LinkedList;
import java.util.Queue;
import java.util.Stack;

public class Stack_Queue {

	public static void main(String[] args) {
		Stack st = new Stack();
		
		// LinkedList로 Queue를 구현할 수 있음
		// Queue 인터페이스 : 구현된 메소드는 없고 이름만 있는 상태
		Queue q = new LinkedList();
		
		
		// Create
		st.push("0");
		st.push("1");
		st.push("2");
		
		q.offer("0");
		q.offer("1");
		q.offer("2");
		
		System.out.println("= Stack =");;
		// 스택에서 요소 하나를 꺼내서 출력 -> st가 텅 비어버릴 때까지
		// Read + Delete
		while (!st.empty()) {
			System.out.println(st.pop());
		}
		
		System.out.println("= Queue =");;
		// 스택에서 요소 하나를 꺼내서 출력 -> q가 텅 비어버릴 때까지
		// Read + Delete
		while (!q.isEmpty()) {
			System.out.println(q.poll());
		}
	}

}
