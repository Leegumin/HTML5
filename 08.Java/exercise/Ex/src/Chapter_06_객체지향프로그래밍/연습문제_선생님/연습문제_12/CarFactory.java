package Chapter_06_객체지향프로그래밍.연습문제_선생님.연습문제_12;

public class CarFactory {
	int carNum;
	String carName;

	CarFactory() {
	}
	
	CarFactory(int carNum, String carName) {
		this.carNum = carNum;
		this.carName = carName;
	}

	
	public int getCarNum() {
		return carNum;
	}

	public void setCarNum(int carNum) {
		this.carNum = carNum;
	}

	public String getCarName() {
		return carName;
	}

	public void setCarName(String carName) {
		this.carName = carName;
	}
	
}
