package Chapter_16_네트워킹.예제.예제_06_TCP소켓프로그래밍;

import java.io.*;
import java.net.*;

// 클래스 설명 : 한 번 실행하고 결과 확인 후 종료
public class TcpIpClient {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			String serverIp = "127.0.0.1";

			System.out.println("서버에 연결중입니다. 서버IP : " + serverIp);
			// 소켓을 생성하여 연결을 요청한다.
			// 서버쪽 주소(ip주소 + 7777)를 세팅해서 소켓 생성
			Socket socket = new Socket(serverIp, 7777);

			// 소켓의 입력스트림을 얻는다.
			// 네트웤 패킷 정보를 받는 부분을 준비하는 단계
			InputStream in = socket.getInputStream();
			DataInputStream dis = new DataInputStream(in);

			// 소켓으로 부터 받은 데이터를 출력한다.
			// readUTF : 실제 네트웤으로 들어온 메시지를 읽는 메소드
			System.out.println("서버로부터 받은 메시지 : " + dis.readUTF());
			System.out.println("연결을 종료합니다.");

			// 스트림과 소켓을 닫는다.
			dis.close();
			socket.close();
			System.out.println("연결이 종료되었습니다.");
		} catch (ConnectException ce) {
			ce.printStackTrace();
		} catch (IOException ie) {
			ie.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
