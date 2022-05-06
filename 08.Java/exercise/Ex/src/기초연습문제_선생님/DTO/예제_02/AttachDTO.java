package 기초연습문제_선생님.DTO.예제_02;

public class AttachDTO {
	private int idx;
	private int boardIdx;
	private String originalName;
	private String saveName;
	private int size;

	public void info() {
		System.out.println("idx : " + idx); // 파일 번호(PK)
		System.out.println("boardIdx : " + boardIdx); // 게시글 번호(PK)
		System.out.println("originalName : " + originalName); // 원본 파이렴ㅇ
		System.out.println("saveName : " + saveName); // 저장 파일명
		System.out.println("size : " + size); // 파일 크기
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

	public String getOriginalName() {
		return originalName;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}

	public String getSaveName() {
		return saveName;
	}

	public void setSaveName(String saveName) {
		this.saveName = saveName;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

}
