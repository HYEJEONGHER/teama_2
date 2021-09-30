package teamA_2.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public FrontController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String command = uri.substring(conPath.length()+1);
		String[] commands = command.split("/");
		if(commands[0].equals("reserve")) {
			reserveController rc = new reserveController(request,response,commands[1]);
		}else if(commands[0].equals("space")) {
			spaceController sc = new spaceController(request,response,commands[1]);
		}else if(commands[0].equals("host")) {
			hostController hc = new hostController(request,response,commands[1]);
		}else if(commands[0].equals("notice")) {
			noticeController nc = new noticeController(request,response,commands[1]);
		}else if(commands[0].equals("qna")) {
			qnaController qc = new qnaController(request,response,commands[1]);
		}else if(commands[0].equals("mypage")) {
			mypageController mc = new mypageController(request,response,commands[1]);
		}else if(commands[0].equals("login")) {
			loginController lc = new loginController(request,response,commands[1]);
		}else if(commands[0].equals("hostQNA")) {
			hostQnaController hqc = new hostQnaController(request,response,commands[1]);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
