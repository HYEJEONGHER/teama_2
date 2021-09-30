package teamA_2.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class spaceController {
	
	public spaceController(HttpServletRequest request, HttpServletResponse response,String commands) throws ServletException, IOException{
		
		if(commands.equals("bookmark.do")) {
			list(request,response);
		}else if(commands.equals("newspace.do")) {
			newspace(request,response);
		}
		
	}
	
	public void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("/space/bookmark.jsp");
		rd.forward(request,response);
	}
	
	public void newspace(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("/space/newspace.jsp");
		rd.forward(request,response);
	}

}
