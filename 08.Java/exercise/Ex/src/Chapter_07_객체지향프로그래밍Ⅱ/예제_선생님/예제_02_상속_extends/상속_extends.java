package Chapter_07_객체지향프로그래밍Ⅱ.예제_선생님.예제_02_상속_extends;

public class 상속_extends {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Dslr dslr = new Dslr();
		FilmCamera filmCamera = new FilmCamera();
		
		dslr.takePicture();
		filmCamera.takePicture();
		
		dslr.extraPicture();
		filmCamera.smallPicture();
	}

}
