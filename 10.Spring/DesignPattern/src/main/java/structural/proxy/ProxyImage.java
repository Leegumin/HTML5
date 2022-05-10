package structural.proxy;

/**
 * packageName : structural.proxy
 * fileName : ProxyImage
 * author : ds
 * date : 2022-05-10
 * description : RealImage 클래스를 대신(대리)하는 클래스
 * RealImage 클래스 이름을 숨겨 보안을 강화시킴
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-10         ds          최초 생성
 */
public class ProxyImage implements Image {
    private String fileName;

    private Image image = null;

    public ProxyImage(String fileName) {
        this.fileName = fileName;
    }

    @Override
    public void displayImage() {
        // 현재 image 객체가 없으면 실제 RealImage를 생성
        if (image == null) {
            image = new RealImage(fileName);
        }
        // 현재 image 객체가 있으면 이미지 이름 정보 출력
        image.displayImage();
    }
}
