package structural.adapter;

/**
 * packageName : structural.adapter
 * fileName : WildTurkey
 * author : ds
 * date : 2022-05-10
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-10         ds          최초 생성
 */
public class WildTurkey implements Turkey {
    @Override
    public void gobble() {
        System.out.println("골골골");
    }

    @Override
    public void fly() {
        System.out.println("칠면조는 짧은 거리를 날 수 있음");
    }
}
