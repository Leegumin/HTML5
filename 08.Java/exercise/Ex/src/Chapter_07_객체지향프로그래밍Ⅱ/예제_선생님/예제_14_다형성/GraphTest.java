package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_14_다형성;

public class GraphTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		StockGraph stckgraph = new StockGraph();
		Report report = new Report();
		
		report.drawing(stckgraph);
	}

}
