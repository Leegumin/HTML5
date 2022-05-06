package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_03_상속_extends;

public class 상속_extends {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/* 마린 : */
		/* 속성 : 키, 몸무게 */
		/* 기능 */
		/* 걷기 : "걸어가고 있습니다" */
		/* 총쏘기 : "총쏘기" */
		/* 스팀팩 : "스팀팩을 썼습니다." */
		/* 파이어뱃 : */
		/* 속성 : 키, 몸무게 */
		/* 기능 */
		/* 걷기 : "걸어가고 있습니다" */
		/* 불쏘기 : "총쏘기" */
		/* 탱크 : */
		/* 속성 : 몸무게 */
		/* 기능 */
		/* 운전 : "움직이고 있습니다" */
		/* 시즈모드 : "시즈모드로 동작하였습니다." */

		StarCraft_Marin marin = new StarCraft_Marin();
		StarCraft_Firebat firebat = new StarCraft_Firebat();
		StarCraft_Tank tank = new StarCraft_Tank();

		System.out.println("*유닛 : 마린");
		System.out.printf("*속성%n-키 : %s%n-몸무게 : %s%n", marin.height, marin.weight);
		System.out.println("*기능");
		marin.walking();
		marin.gunFire();
		marin.steamPack();
		System.out.println("-------------------------------------------------------");
		System.out.println("*유닛 : 파이어뱃");
		System.out.printf("*속성%n-키 : %s%n-몸무게 : %s%n", firebat.height, firebat.weight);
		System.out.println("*기능");
		firebat.walking();
		firebat.fireShot();
		System.out.println("-------------------------------------------------------");
		System.out.println("*유닛 : 탱크");
		System.out.printf("*속성%n-몸무게 : %s%n", tank.weight);
		System.out.println("*기능");
		tank.driving();
		tank.sizeMode();
	}

}
