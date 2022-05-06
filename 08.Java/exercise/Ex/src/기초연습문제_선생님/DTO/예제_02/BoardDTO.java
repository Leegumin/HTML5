package 기초연습문제_선생님.DTO.예제_02;

public class BoardDTO {
	private int idx;
	private String title;
	private String content;
	private String writer;
	private int viewCnt;
	private boolean noticeYn;
	private boolean secretYn;
	private boolean changeYn;
	private int fileIdxs;

	public void info() {
		System.out.println("idx : " + idx); // 번호(PK)
		System.out.println("title : " + title); // 제목
		System.out.println("content : " + content); // 내용
		System.out.println("writer : " + writer); // 작성자
		System.out.println("viewCnt : " + viewCnt); // 조회 수
		System.out.println("noticeYn : " + noticeYn); // 공지 여부
		System.out.println("secretYn : " + secretYn); // 비밀 여부
		System.out.println("changeYn" + changeYn); // 파일 변경 여부
		System.out.println("fileIdxs : " + fileIdxs); // 파일 인덱스 리스트
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public int getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}

	public Boolean getNoticeYn() {
		return noticeYn;
	}

	public void setNoticeYn(Boolean noticeYn) {
		this.noticeYn = noticeYn;
	}

	public Boolean getSecretYn() {
		return secretYn;
	}

	public void setSecretYn(Boolean secretYn) {
		this.secretYn = secretYn;
	}

	public Boolean getChangeYn() {
		return changeYn;
	}

	public void setChangeYn(Boolean changeYn) {
		this.changeYn = changeYn;
	}

	public int getFileIdxs() {
		return fileIdxs;
	}

	public void setFileIdxs(int fileIdxs) {
		this.fileIdxs = fileIdxs;
	}

}
