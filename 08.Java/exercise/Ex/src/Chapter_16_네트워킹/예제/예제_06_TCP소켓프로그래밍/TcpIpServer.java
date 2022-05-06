package Chapter_16_네트워킹.예제.예제_06_TCP소켓프로그래밍;

import java.net.*;
import java.io.*;
import java.util.Date;
import java.text.SimpleDateFormat;


// 실행방법 디버그 -> 디버그컨피그레이션 -> 쇼 커맨드라인 -> 클래스패스 복사
public class TcpIpServer {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		ServerSocket serverSocket = null;

		try {
			// 서버소켓을 생성하여 7777번 포트와 결합(bind)시킨다.
			serverSocket = new ServerSocket(7777);
			System.out.println(getTime() + "서버가 준비되었습니다.");
		} catch (IOException e) {
			e.printStackTrace();
		}

		// 클라이언트로부터 응답을 대기
		// 무한 루프 : 데몬형태(계속 실행 대기하는 프로세스)
		while (true) {
			try {
				System.out.println(getTime() + "연결요청을 기다립니다.");
				// 서버소켓은 클라이언트의 연결요청이 올 때까지 실행을 멈추고 계속 기다린다.
				// 클라이언트의 연결요청이 오면 클라이언트 소켓과 통신할 새로운 소켓을 생성한다.
				// 클라이언트로 부터 소켓(ip, port)을 연결하는 부분
				Socket socket = serverSocket.accept();
				System.out.println(getTime() + socket.getInetAddress() + "로부터 연결요청이 들어왔습니다.");

				// 소켓의 출력스트림을 얻는다.
				// Output : 메시지 전송을 위한 부분
				// 네트웤 패킷 전송을 위한 준비 단계
				OutputStream out = socket.getOutputStream();
				DataOutputStream dos = new DataOutputStream(out);

				// 원격 소켓(remote socket)에 데이터를 보낸다.
				// writeUTF : 네트웤 메시지를 전송하는 메소드(문자열 메시지)
				dos.writeUTF("[Notice] Test Message1 from Server.");
				System.out.println(getTime() + "데이터를 전송했습니다.");
				
				// 스트림과 소켓을 닫아준다.
				dos.close();
				socket.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} // while
	} // main
	
	// 현재시간을 문자열로 반환하는 함수
	static String getTime() {
		SimpleDateFormat f = new SimpleDateFormat("[hh:mm:ss]");
		return f.format(new Date());
	}
}
