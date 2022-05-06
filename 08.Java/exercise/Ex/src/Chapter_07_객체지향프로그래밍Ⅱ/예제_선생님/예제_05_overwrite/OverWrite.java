package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_05_overwrite;

public class OverWrite {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Weapon weapon = new Weapon();
		
		System.out.println("기본 무기의 살상 능력은 " + weapon.fire());
		
		
		Weapon_Cannon cannon = new Weapon_Cannon();
		
		System.out.println("대포의 살상 능력은 " + cannon.fire());
	}

}
