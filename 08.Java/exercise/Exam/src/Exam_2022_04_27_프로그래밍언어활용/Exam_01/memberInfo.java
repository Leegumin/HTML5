package Exam_2022_04_27_프로그래밍언어활용.Exam_01;

public class memberInfo extends Person {
	// 멤버변수
	private String text;

	// 기본 생성자
	public memberInfo() {
	}

	// 매개변수 4개짜리 생성자
	public memberInfo(int id, String name, String description, String text) {
		this.id = id;
		this.name = name;
		this.description = description;
		this.text = text;
	}

	// "안녕하세요 회원정보 클래스입니다." 출력 메서드
		public void printMember() {
			System.out.println("안녕하세요 회원정보 클래스입니다.");
		}
	
	// setter, getter
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

}
