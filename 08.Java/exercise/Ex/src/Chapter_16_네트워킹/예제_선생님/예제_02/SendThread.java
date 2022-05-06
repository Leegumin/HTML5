package Chapter_16_네트워킹.예제_선생님.예제_02;

import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.util.Scanner;

public class SendThread extends Thread {
	private final Socket socket;  
	
	// 콘솔 입력 받기
	private Scanner scanner = new Scanner(System.in);

	// 생성자
	public SendThread(Socket socket) {
		this.socket = socket;
	}

	@Override
	public void run() {
		try {
			// 네트웍 패킷 전송 준비
			DataOutputStream sendWriter = new DataOutputStream(socket.getOutputStream());

			String sendString;
			while (true) {
				// 콘솔 입력
				sendString = scanner.nextLine();
				// 네트웍으로 콘솔 입력 문자열 전송
				sendWriter.writeUTF(sendString);
				// 버퍼에 있는 메세지를 즉시 비워서 출력
				sendWriter.flush();
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
