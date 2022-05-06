package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_14_다형성;

public class Report extends Graph{
	// 온갖 그래프 출력 기능 구현
	// 컬러 그리기
	// 흑백 그리기
	// 컬러 + 흑백 그리기
	// 계속기능 추가가 되는 경우
	// 다형성 메소드를 고려해야 함
	// spring DI 형태 (의존성 주입) : 생성자, setter
	public void drawing(Graph g) {
		g.draw();
	}
}
