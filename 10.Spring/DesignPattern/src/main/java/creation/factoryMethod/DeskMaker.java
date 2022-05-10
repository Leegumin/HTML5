package creation.factoryMethod;

/**
 * packageName : creation.factorymethod
 * fileName : DeskMaker
 * author : ds
 * date : 2022-05-09
 * description : Desk Maker Class ( Interface : Furniture )
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-09         ds          최초 생성
 */
public class DeskMaker implements Furniture {
    public DeskMaker() {
        System.out.println("Desk Make Waiting");
    }

    @Override
    public void make() {
        System.out.println("Desk Make");
    }

    @Override
    public void newDesign() {
        System.out.println("Research new Desk");
    }
}
