package Chapter_16_네트워킹.예제_선생님.예제_01;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.net.SocketException;
import java.util.Scanner;

public class ReceiveThread extends Thread {
	private final Socket socket;

	// 생성자
	public ReceiveThread(Socket socket) {
		this.socket = socket;
	}

	@Override
	public void run() {
		try {
			// 채팅에서 메시지 받는 부분 준비
			DataInputStream tmpbuf = new DataInputStream(socket.getInputStream());

			String receiveString;
			while (true) {
				// 상대방 메세지 수신 메소드
				receiveString = tmpbuf.readUTF();
				System.out.println("상대방 : " + receiveString);
			}
		} catch (SocketException e1) {
			System.out.println("상대방 연결이 종료되었습니다.");
		} catch (IOException e2) {
			e2.printStackTrace();
		}
	}
}
