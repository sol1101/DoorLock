package doorlock_pw;

import java.io.IOException;
import java.io.PrintWriter;

import com.google.gson.Gson;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Get_info")
public class Get_info extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.addHeader("Access-Control-Allow-Origin", "*");
		DoorlockDAO dao = new DoorlockDAO();
		DoorLockVO vo = dao.getCustomerPW("2110260001");
		
		System.out.println();
		System.out.println("get_info:" + vo.getDoorlockPW());
		String result = new Gson().toJson(vo);
		PrintWriter out = response.getWriter();
		out.print(result);
	}
}
