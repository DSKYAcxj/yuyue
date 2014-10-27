import java.io.IOException;
//import java.util.ArrayList;
//import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.student;
import bean.teacher;


public class require extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String url = "Schoose2.jsp";
		student stu =(student)request.getSession().getAttribute("nowstu");
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		//List list=new ArrayList();
		
		//teacher tch = new teacher();
		//student stu = new student();
		
		String name = (String)request.getParameter("R_name").trim();
		
		
		    teacher tch=database.QueryName_T(name);
		      request.setAttribute("nowtch", tch);
		      request.setAttribute("nowstu", stu);
		      RequestDispatcher rd=request.getRequestDispatcher(url);
		      rd.forward(request, response);
		  
		return;
	}


	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}
}
