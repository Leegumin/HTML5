package creation.factoryMethod;

/**
 * packageName : creation.factorymethod
 * fileName : BedMaker
 * author : ds
 * date : 2022-05-09
 * description : 침대 구현 클래스(가구 인터페이스 상속)
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-09         ds          최초 생성
 */
public class BedMaker implements Furniture{
    public BedMaker() {
        System.out.println("Bed Waiting");
    }

    @Override
    public void make() {
        System.out.println("Bed Make");
    }

    @Override
    public void newDesign() {
        System.out.println("Research new Bed");
    }
}
