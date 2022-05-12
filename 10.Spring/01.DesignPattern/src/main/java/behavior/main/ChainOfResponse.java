package behavior.main;

import behavior.chainOfResponse.Chain;
import behavior.chainOfResponse.Number;
import behavior.chainOfResponse.NegativeProcessor;
import behavior.chainOfResponse.PositiveProcessor;
import behavior.chainOfResponse.ZeroProcessor;

/**
 * packageName : behavior.main
 * fileName : ChainOfResponse
 * author : ds
 * date : 2022-05-10
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-10         ds          최초 생성
 */
public class ChainOfResponse {
    public static void main(String[] args) {
        // 객체 생성
        Chain chain1 = new NegativeProcessor();
        Chain chain2 = new ZeroProcessor();
        Chain chain3 = new PositiveProcessor();
        
        // 객체들을 체인으로 연결 : 링크드 리스트로 만들기
        // chain1 -- chain2 -- chain3 순으로 연결됨
        chain1.setNext(chain2);
        chain2.setNext(chain3);

        // 책임 연쇄 패턴 :
        // 첫번째 객체만 호출해도 모두 결과를 찾아주는지 테스트
        chain1.process(new Number(90));
        chain1.process(new Number(-50));
        chain1.process(new Number(0));
    }
}
