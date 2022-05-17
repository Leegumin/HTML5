package structure.adapter;

/**
 * packageName : structure.adapter
 * fileName : MallardDuck
 * author : ds
 * date : 2022-05-10
 * description : 청둥오리 클래스
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-10         ds          최초 생성
 */
public class MallardDuck implements Duck{
    @Override
    public void quack() {
        System.out.println("쾍쾍쾍");
    }

    @Override
    public void fly() {
        System.out.println("오리는 멀리 날수 있음");
    }
}





