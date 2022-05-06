package Exam_2022_04_27_네트워크프로그래밍구현.Exam_02;

public interface AuthorService {
	// 작가 목록
	public void authorGetList(String cri);
	// 작가 총 수
	public void authorGetTotal(String cri);
	// 작가 상세 페이지
	public void authorGetDetail(int authorId);
	// 작가 정보 수정
	public void authorModify(String author);
	// 작가 정보 삭제
	public void authorDelete(int authorId);

}
