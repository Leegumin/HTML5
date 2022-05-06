package 기초연습문제_선생님.DTO.예제_01;

// DTO 기본형 : 멤버변수 + GETTER/SETTER
// DTO(Data Transfer Object) : DB에서 정보를 저장할 클래스
public class CommonDTO {
	private String paginationInfo; // 페이지 정보
	private boolean deleteYn; // 삭제 여부
	private String insertTime; // 등록일
	private String updateTime; // 수정일
	private String deleteTime; // 삭제일

	// 멤버변수 출력용 메소드
	// 디버깅 목적
	public void info() {
		System.out.println("paginationInfo = " + paginationInfo);
		System.out.println("deleteYn = " + deleteYn);
		System.out.println("insertTime = " + insertTime);
		System.out.println("updateTime = " + updateTime);
		System.out.println("deleteTime = " + deleteTime);
	}

	public String getPaginationInfo() {
		return paginationInfo;
	}

	public void setPaginationInfo(String paginationInfo) {
		this.paginationInfo = paginationInfo;
	}

	public boolean getDeleteYn() {
		return deleteYn;
	}

	public void setDeleteYn(Boolean deleteYn) {
		this.deleteYn = deleteYn;
	}

	public String getInsertTime() {
		return insertTime;
	}

	public void setInsertTime(String insertTime) {
		this.insertTime = insertTime;
	}

	public String getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}

	public String getDeleteTime() {
		return deleteTime;
	}

	public void setDeleteTime(String deleteTime) {
		this.deleteTime = deleteTime;
	}

}
