import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.teacher;

public class Tselect extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("ok1");
		teacher tch =(teacher)request.getSession().getAttribute("nowtch");
		//teacher tch =(teacher)request.getAttribute("nowtch");
		System.out.println("ok2");
		String fabu = tch.getFabu();
        System.out.println("ok3");
		String url = "TTxt.jsp";
		response.setContentType("text/html");
		response.setCharacterEncoding("GBK");
		String[] tslt=request.getParameterValues("T_chse");
		String T_c = request.getParameter("T_qr");
		String serial [] = new String [10];
        serial [0] = "8:30-9:00";
        serial [1] = "9:00-9:30";
        serial [2] = "9:30-10:00";
        serial [3] = "10:00-10:30";
        serial [4] = "10:30-11:00";
        serial [5] = "14:30-15:00";
        serial [6] = "15:00-15:30";
        serial [7] = "15:30-16:00";
        serial [8] = "16:00-16:30";
        serial [9] = "16:30-17:00";
        int j;
        System.out.println("ok4");
		if(T_c != null)
		{
			System.out.println("ok5");
			System.out.println(tslt.length);
			for (int i = 0; i< tslt.length; i++)
			{
				for ( j = 0; j< 10; j++)
				{
					  if(tslt[i].equals(serial[j]) == true)break;
				}
				fabu += String.valueOf( j);
				
			}
			tch.setFabu(fabu);
			database.deleteInfo_T(tch.getName());
			database.addInfo_T(tch);
		}
		System.out.println("ok6");
		request.setAttribute("nowtch", tch);
		RequestDispatcher rd=request.getRequestDispatcher(url);
		rd.forward(request, response);
		return;
	}
	
	public void init() throws ServletException {
		// Put your code here
	}
}