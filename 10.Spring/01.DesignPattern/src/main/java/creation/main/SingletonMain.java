package creation.main;

import creation.singleton.Singleton;

/**
 * packageName : creation.main
 * fileName : SingletonMain
 * author : ds
 * date : 2022-05-09
 * description : Singleton 테스트, 실제 객체가 하나만 만들어지는지 확인
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-09         ds          최초 생성
 */
public class SingletonMain {
    public static void main(String[] args) {
        // 객체가 있으면 패스하고, 객체가 없으면 생성하는 메서드
        Singleton obj1 = Singleton.getInstance();
        Singleton obj2 = Singleton.getInstance();

        if (obj1 == obj2) {
            // 똑같은 주소를 가진 단일개체를 가져오기 때문에 "obj1 == obj2" 결과값이 나옴  
            System.out.println("obj1 == obj2");
        } else {
            System.out.println("obj1 != obj2");
        }
    }
}
