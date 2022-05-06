package Chapter_06_객체지향프로그래밍.예제.예제_02_객체의생성과사용;

class Tv {
	/* Tv의 속성(멤버변수) */
	/* 색상 */
	String color;
	/* 전원상태(on/off) */
	boolean power;
	/* 채널 */
	int channel;
	
	/* Tv의 기능(메서드) */
	void power() { power = !power; }
	void channelUp() { ++channel; }
	void channelDown() { --channel; }
}
