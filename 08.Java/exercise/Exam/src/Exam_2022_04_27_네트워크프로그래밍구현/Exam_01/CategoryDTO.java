package Exam_2022_04_27_네트워크프로그래밍구현.Exam_01;

public class CategoryDTO {
	// 멤버변수
	private int tier;
	private String cateName;
	private String cateCode;
	private String cateParent;

	// setter, getter
	public int getTier() {
		return tier;
	}

	public void setTier(int tier) {
		this.tier = tier;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

	public String getCateCode() {
		return cateCode;
	}

	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}

	public String getCateParent() {
		return cateParent;
	}

	public void setCateParent(String cateParent) {
		this.cateParent = cateParent;
	}

}
