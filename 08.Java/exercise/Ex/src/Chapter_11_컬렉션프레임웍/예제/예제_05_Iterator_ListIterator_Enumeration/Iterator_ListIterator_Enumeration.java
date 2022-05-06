package Chapter_11_컬렉션프레임웍.예제.예제_05_Iterator_ListIterator_Enumeration;

import java.util.ArrayList;
import java.util.Iterator;

public class Iterator_ListIterator_Enumeration {

	public static void main(String[] args) {
		ArrayList list = new ArrayList();
		list.add("1");
		list.add("2");
		list.add("3");
		list.add("4");
		list.add("5");
		
		Iterator it = list.iterator();
		
		System.out.println("==iterator 반복문==");
		while (it.hasNext()) {
			Object obj = it.next();
			System.out.println(obj);
		}
		
		ArrayList<String> list2 = new ArrayList<>();
		list2.add("1");
		list2.add("2");
		list2.add("3");
		list2.add("4");
		list2.add("5");

		System.out.println("==향상된 for문==");
		for (String s : list2) {
			System.out.println(s);
		}
	}

}
