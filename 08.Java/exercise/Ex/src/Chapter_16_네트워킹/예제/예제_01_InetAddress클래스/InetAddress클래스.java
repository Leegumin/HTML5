package Chapter_16_네트워킹.예제.예제_01_InetAddress클래스;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;

public class InetAddress클래스 {
	public static void main(String[] args) {
		InetAddress ip = null;
		InetAddress[] ipArr = null;

		try {
			// www.naver.com으로 가져온 주소
			ip = InetAddress.getByName("www.naver.com");
			System.out.println("getHostName() : " + ip.getHostName());
			System.out.println("getHostAddress() : " + ip.getHostAddress());
			System.out.println("toString() : " + ip.toString());

			// byte : -128 ~ +128의 범위를 가짐
			// ip주소 : 0~255 4자리 수로 되어 있음
			// 때문에 byte로 들어갈 시 오버플로우가 일어나서 값이 이상해짐
			byte[] ipAddr = ip.getAddress();
			System.out.println("getAddress() : " + Arrays.toString(ipAddr));

			String result = "";
			for (int i = 0; i < ipAddr.length; i++) {
				result += (ipAddr[i] < 0 ? ipAddr[i] + 256 : ipAddr[i]) + ".";
			}
			System.out.println("getAddress() + 256 : " + result);
			System.out.println();
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}

		try {
			ip = InetAddress.getLocalHost();
			System.out.println("getHostName() : " + ip.getHostName());
			System.out.println("getHostAddress() : " + ip.getHostAddress());
			System.out.println();

		} catch (UnknownHostException e) {
			e.printStackTrace();
		}

		try {
			ipArr = InetAddress.getAllByName("www.naver.com");

			for (int i = 0; i < ipArr.length; i++) {
				System.out.println("ipArr[" + i + "] : " + ipArr[i]);
			}
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}

	}
}
