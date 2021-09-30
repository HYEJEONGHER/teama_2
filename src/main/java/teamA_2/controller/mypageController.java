package teamA_2.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class mypageController {
	
	public mypageController(HttpServletRequest request, HttpServletResponse response,String commands) throws ServletException, IOException{
		
		if(commands.equals("main.do")) {
			main(request,response);
		}else if(commands.equals("loginCheck.do")){
			loginCheck(request,response);
		}
		
	}
	
	public void main(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("/mypage/main.jsp");
		rd.forward(request,response);
	}
	
	public void loginCheck(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("/mypage/loginCheck.jsp");
		rd.forward(request,response);
	}

}
