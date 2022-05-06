package MVC_model;

import java.util.ArrayList;

public class BbsDAO {

	ArrayList<BbsDTO> data;
	int count = 0;

	// 기본 생성자
	public BbsDAO() {
		// ArrayList<BbsDTO> data = new Ararylist<BbsDTO>(); 형태와 동일함
		// 자료구조 생성 : BbsDTO
		data = new ArrayList<BbsDTO>();
	}

	// Create : 입력메소드
	public void create(BbsDTO bbs) {
		count++;
		data.add(bbs);
		// bbs쪽에 setter 이용해서 저장 : no
		// 글 번호 증가
		bbs.setNo(count);
	}

	// Read : no에 해당하는 특정 글 읽기
	public BbsDTO read(int no) {

		// ArrayList data : 전체 글 목록을 가지고 있는 자료 구조
		// 매개변수 글 번호(no)에 해당하는 글이 있으면 반환
		for (BbsDTO item : data) {
			if (item.getNo() == no) {
				return item;
			}
		}
		return null;
	}

	// Read All : 전체 글 읽기
	public ArrayList<BbsDTO> readAll() {
		// ArrayList data : 전체 글
		return data;
	}

	// Delete : 글 지우기
	public void delete(int no) {
		// ArrayList data : 전체 글
		// item : 전체 글 중에 하나
		for (BbsDTO item : data) {
			if (item.getNo() == no) {
				data.remove(item);
			}
		}
	}
	
	// Update : 글 수정
	public void update(BbsDTO bbs) {
		// 아무것도 안함
	}
}
