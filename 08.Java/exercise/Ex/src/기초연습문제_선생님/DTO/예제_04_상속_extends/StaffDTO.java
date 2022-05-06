package 기초연습문제_선생님.DTO.예제_04_상속_extends;

public class StaffDTO extends PersonDTO {
	void setStaff() {
		age = 30;
		name = "이순신";
		height = 180;
		setWeight(87);
	}
}
