package Exam_2022_04_27_네트워크프로그래밍구현.Exam_02;

public interface BookService {
	// 상품 검색
	public void getGoodsList(String cri);
	// 상품 총 갯수
	public void goodsGetTotal(String cri);
	// 국내 카테고리 리스트
	public void getCateCode1();
	// 외국 카테고리 리스트
	public void getCateCode2();
	// 상품 정보
	public void getGoodsInfo(int bookId);
	// 상품 id 이름
	public void getBookIdName(int bookId);
	// 작가 등록
	public void authorEnroll(String author);

}
