package Chapter_11_컬렉션프레임웍.예제.예제_16_HashMap;

import java.util.*;

public class HashMap예제 {
	public static void main(String[] args) {
		HashMap map = new HashMap();
		// map.put("키", "값");
		map.put("myId", "1234");
		map.put("asdf", "1111");
		// 이미 존재하는 키 추가 가능함 -> 기존 키 값은 없어짐
		map.put("asdf", "1234");

		Scanner s = new Scanner(System.in);

		while (true) {
			// 아이디 입력
			System.out.println("id와 password를 입력해주세요.");
			System.out.print("id :");
			String id = s.nextLine().trim();

			// 비밀번호 입력
			System.out.print("password :");
			String password = s.nextLine().trim();
			System.out.println();
			
			// HashMap 자료구조의 key값에서 id 값이 포함되지 않는다면 경고문 출력
			if (!map.containsKey(id)) {
				System.out.println("입력하신 id는 존재하지 않습니다. 다시 입력해주세요.");
				continue;
			}

			// get -> 매개변수로 key 값이 들어가면 value를 반환
			if (!(map.get(id)).equals(password)) {
				System.out.println("비밀번호가 일치하지 않습니다. 다시 입력해주세요.");
			} else {
				System.out.println("id와 비밀번호가 일치합니다.");
				break;
			}
		} // while
	} // main
}
