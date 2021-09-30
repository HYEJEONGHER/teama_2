package teamA_2.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class hostQnaController {
	public hostQnaController(HttpServletRequest request, HttpServletResponse response,String commands) throws ServletException, IOException{
		
		if(commands.equals("list.do")) {
			list(request,response);
		}
		
	}
	
	public void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("/hostQNA/list.jsp");
		rd.forward(request,response);
	}

}
