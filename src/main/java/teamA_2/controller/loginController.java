package teamA_2.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class loginController {
	
	public loginController(HttpServletRequest request, HttpServletResponse response,String commands) throws ServletException, IOException{
		
		if(commands.equals("login.do")) {
			login(request,response);
		}else if(commands.equals("join.do")) {
			join(request,response);
		}
		
	}
	
	public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("/login/login.jsp");
		rd.forward(request,response);
	}
	
	public void join(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("/login/join.jsp");
		rd.forward(request,response);
	}

}
