package creation.factorymethod;

import creation.factorymethod.Furniture;

/**
 * packageName : PACKAGE_NAME
 * fileName : creation.factorymethod.ChairMaker
 * author : ds
 * date : 2022-05-09
 * description : Chair Maker Class ( Interface : Furniture )
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-09         ds          최초 생성
 */
public class ChairMaker implements Furniture {
    public ChairMaker() {
        System.out.println("Chair Make Waiting");
    }

    @Override
    public void make() {
        System.out.println("Chair Make");

    }

    @Override
    public void newDesign() {
        System.out.println("Research new chair");
    }
}
