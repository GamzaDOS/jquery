package api;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/api2")
public class API2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	//api2?num1=3&num2=7
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//num1 부터 num2 까지 모든 값을 더해서 돌려줌
		int a=Integer.parseInt(request.getParameter("num1"));
		int b=Integer.parseInt(request.getParameter("num2"));
		int sum=0;
		for( ;a<=b;a++) {
			sum +=a;
		}
		
	
		response.getWriter().append(sum+"");
	}



}
