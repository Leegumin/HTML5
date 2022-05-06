package 기초연습문제_선생님.DTO.예제_01;

// DTO 기본형 : 멤버변수 + GETTER/SETTER
// DTO(Data Transfer Object) : DB에서 정보를 저장할 클래스
public class CommentDTO {
	private int idx; // 글번호
	private int boardIdx; // 게시판id
	private String content; // 게시판내용
	private String writer; // 글쓴이

	public void info() {
		System.out.println("idx = " + idx);
		System.out.println("boardIdx = " + boardIdx);
		System.out.println("content = " + content);
		System.out.println("writer = " + writer);
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getBoardIdx() {
		return boardIdx;
	}

	public void setBoardIdx(int boardIdx) {
		this.boardIdx = boardIdx;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

}
