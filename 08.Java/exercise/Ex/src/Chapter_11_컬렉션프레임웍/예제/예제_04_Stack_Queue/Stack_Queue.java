package Chapter_11_컬렉션프레임웍.예제.예제_04_Stack_Queue;

import java.util.*;

public class Stack_Queue {
	static Queue q = new LinkedList();

	// queue에 최대 5개까지만 저장되도록 설정
	static final int MAX_SIZE = 5;

	public static void save(String input) {
		// 입력이 있으면 queue에 저장
		if (!"".equals(input)) {
			q.offer(input);
		}

		// queue의 최대크기를 넘으면 제일 처음 입력된 것을 삭제
		if(q.size() > MAX_SIZE) { // size()는 Collection인터페이스에 정의
			q.remove();
		}
	}

	public static void main(String[] args) {
		System.out.println("help를 입력하면 도움말을 볼 수 있습니다.");

		while (true) {
			System.out.println(">>");
			try {
				Scanner s = new Scanner(System.in);
				String input = s.nextLine().trim();

				// 입력이 없으면 continue로 인해 명령 재실행
				if ("".equals(input)) {
					continue;
				}

				// 입력이 "q"든 "Q"면 프로그램을 종료함
				if (input.equalsIgnoreCase("q")) {
					System.exit(0);
				// 입력이 "help"면 도움말 출력
				} else if (input.equalsIgnoreCase("help")) {
					System.out.println(" help - 도움말을 보여줍니다.");
					System.out.println(" q 또는 Q - 프로그램을 종료합니다.");
					System.out.println(" history - 최근에 입력한 명령어를 " + MAX_SIZE + "개 보여줍니다.");
				// 입력이 "history"면 최근 입력된 명령어 출력
				} else if (input.equalsIgnoreCase("history")) {
					int i = 0;
					// 입력받은 명령어를 저장
					save(input);

					LinkedList tmp = (LinkedList) q;
					
					// 향상된 for문을 쓰기 위해 새로 정의(hasNext, next사용이 가능한 listIterator 형태로)
					ListIterator it = tmp.listIterator();

					// it.hasNext() -> it에서 차례대로 값을 호출하며 다음 값이 있으면 true 없으면 false 값을 반환
					while (it.hasNext()) {
						// it.next() -> it에서 차례대로 값을 호출하여 타입 그대로 반환
						System.out.println(++i + "." + it.next());
					}
				// 입력이 위 사항에 해당하지 않으면 그대로 출력
				} else {
					// 입력받은 명령어를 저장
					save(input);
					System.out.println(input);
				} // if(input.equalsIgnoreCase("q"))
			} catch (Exception e) {
				System.out.println("입력오류입니다.");
			}
		} // while(true)
	} // main()
}
