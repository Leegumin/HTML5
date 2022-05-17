package behavior.chainOfResponse;

/**
 * packageName : behavior.chainOfResponse
 * fileName : PositiveProcessor
 * author : ds
 * date : 2022-05-10
 * description : 핸들러(Chain)를 구현한 양수 클래스
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-10         ds          최초 생성
 */
public class NegativeProcessor implements Chain {
    private Chain nextInChain;

    // 체인 연결 메소드 : 링크드 리스트 형태
    // 아래 메소드를 호출하면 체인에 연결됨
    @Override
    public void setNext(Chain nextInChain) {
        // 멤버변수 nextInChain의 다음 객체의 주소가 저장됨
        this.nextInChain = nextInChain;
    }

    // 음수인지 판단하는 메소드
    @Override
    public void process(Number request) {
        if (request.getNumber() < 0) {
            System.out.println("음수 : " + request.getNumber());
        }
        else {
            // 아니면 다음 체인으로 넘김
            nextInChain.process(request);
        }
    }
}
