package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_05_overwrite;

/*Weapon 상속*/
public class Weapon_Cannon extends Weapon {
	
	/* 스프링에서는 오버라이드 대상에 이런식으로 표기를 해줌 */
	@Override
	public int fire() {
		return 10;
	}
}
