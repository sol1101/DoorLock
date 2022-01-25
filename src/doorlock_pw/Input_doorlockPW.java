package doorlock_pw;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


@WebServlet("/Input_doorlockPW")
public class Input_doorlockPW extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		response.addHeader("Access-Control-Allow-Origin", "*"); //��� �Ծ� ����(�ܺ� �������� ������ �����ϵ���)
		
		String doorlockPW = request.getParameter("doorlockPW");
		String is_checkin = "true";//request.getParameter("is_checkin");
		String reservation_num = request.getParameter("reservation_num");
		System.out.println("üũ�� ����:"+is_checkin);
		System.out.println("input_pw");
		System.out.println("������ ���� �� : " + doorlockPW);

		DoorlockDAO dao = new DoorlockDAO();
		DoorLockVO vo = dao.update(doorlockPW,reservation_num);
				
		if(is_checkin.equals("true")) { //üũ�� ���¶�� ����ڰ� ������ ��й�ȣ ����
			vo = dao.getCustomerPW("2111040009");
			System.out.println("is_checkin=1"+vo.getDoorlockPW());
		}else {//üũ�� ���°� �ƴ϶�� ������ ������ ��й�ȣ�� ����
			vo = dao.getRoomPW("A1");			
			System.out.println("is_checkin=0"+vo.getDoorlockPW());
		}		
		
		PrintWriter out = response.getWriter();
		String result = new Gson().toJson(vo.toString());
		out.print(result);
		System.out.println(result);
	}

}
