package structure.main;

import structure.adapter.Turkey;
import structure.adapter.TurkeyAdapter;
import structure.adapter.WildTurkey;

/**
 * packageName : structure.main
 * fileName : AdapterMain
 * author : ds
 * date : 2022-05-10
 * description : 칠면조 어댑터 테스트
 * 테스트케이스 1 : 오리메소드를 호출하면 칠면조 소리가 나는가? O
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-10         ds          최초 생성
 */
public class AdapterMain {
    public static void main(String[] args) {
//  칠면조 객체 생성
//        다형성 : 느슨한 결합
//        부모 Turkey 인터페이스, 클래스 = new 생성자(자식)
//     비교) 단형성 : 단단한 결합
//        부모 클래스 = new 부모 생성자()
//        자식 클래스 = new 자식 생성자()
        Turkey turkey = new WildTurkey(); // 들 칠면조

//        칠면조 어댑터 만들기 :
//        Why? : 오리 메소드를 통해 칠면조 소리를 내게하기 위해
        TurkeyAdapter turkeyAdapter = new TurkeyAdapter(turkey);

        turkeyAdapter.quack(); // 오리메소드지만 칠면조 소리가 남
        turkeyAdapter.fly(); // 칠면조지만 다섯번 날아서 오리처럼 날게함
    }
}





