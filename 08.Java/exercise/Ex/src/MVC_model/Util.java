package MVC_model;

import java.util.Calendar;

public class Util {
	
	// 현재 날짜를 가져오는 메서드
	public static String getDataTime() {
		Calendar cal = Calendar.getInstance();
		
		int y = cal.get(Calendar.YEAR);
		int m = cal.get(Calendar.MONTH);
		int d = cal.get(Calendar.DATE);
		int h = cal.get(Calendar.HOUR);
		int t = cal.get(Calendar.MINUTE);
		int s = cal.get(Calendar.SECOND);

		String datime = y + "-" + m + "-" + d + "-" + h + " : " + t + " : " + s;

		return datime;
	}
}
