package Chapter_14_람다와스트림.예제_선생님.예제_01;

import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class StreamTest {

	public static void main(String[] args) {
		String[] strArr = { "data1", "data2", "data3" };

		// 향상된 for문
//		for (String str : strArr) {
//			System.out.println(str);
//		}

		// stream을 이용해서 코드를 줄여보자
		// stream : java 함수형 프로그래밍

		// asList 메소드 : Array를 List로 변환
		List<Integer> intList = Arrays.asList(1, 2, 3);
		List<String> strList = Arrays.asList("Hwang", "Hong", "Kang");

		// 정렬방법 정리 : 2가지
		Arrays.sort(strArr); // 매개변수 -> 배열
		Collections.sort(strList); // 매개변수 -> 자료구조형태

		System.out.println("==== forEach ====");

		// strList를 stream 구조로 변경하고, sorted로 정렬하고, forEach로 단순출력
		// forEach(x -> System.out.println(x)) : 람다형태의 출력 방법
		strList.stream().sorted().forEach(x -> System.out.println(x)); 

		System.out.println("==== fileter ====");

		// intList를 stream 구조로 변경하고, filter로 2보다 작은것만 남기고, forEach로 단순출력
		// forEach(System.out::println) : 메소드 참조(method reference)는 메소드를 참조해서 매개변수의 정보 및 리턴 타입을 미리 알아내어, 람다식에서 사용하는 매개 변수를 생략하는 방식의 표현법
		intList.stream().filter(x -> x <= 2).forEach(System.out::println);

		System.out.println("==== map ====");

		// intList를 stream 구조로 변경하고, map으로 연산수행 , forEach로 단순출력
		intList.stream().map(x -> x * x).forEach(System.out::println);

		System.out.println("==== list ====");
		// limit 사용
		// 요소 건수를 추출
		intList.stream().limit(2).forEach(System.out::println);

		System.out.println("==== skip ====");
		// skip 사용
		// 시작부터 그 인덱스까지를 제외하고 새로운 스트림을 생성
		intList.stream().skip(2).forEach(System.out::println);

		System.out.println("==== sorted(오름차순) ====");
		// sorted 사용
		// 정렬하는 메서드로 기본적으로 오름차순으로 정렬
		Arrays.asList(1, 4, 3, 2).stream().sorted().forEach(System.out::println);
		
		System.out.println("==== sorted(내림차순) ====");
		// sorted 사용
		// Comparator.reverseOrder -> 내림차순(정렬 거꾸로)으로 정렬
		Arrays.asList(1, 4, 3, 2).stream().sorted(Comparator.reverseOrder()).forEach(System.out::println);

	}

}
