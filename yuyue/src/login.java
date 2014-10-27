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


public class login extends HttpServlet {

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

		System.out.println("1");
		String url1 = "TTxt.jsp";
		String url2 = "STxt.jsp";
		String url = "index.jsp";
		
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		//List list=new ArrayList();
		
		//teacher tch = new teacher();
		//student stu = new student();
		
		String iButton1 = (String)request.getParameter("op1");  
		String iButton2 = (String)request.getParameter("op2");  
		String name = (String)request.getParameter("name").trim();
		String psword = (String)request.getParameter("psword").trim();
		
		if(iButton1 != null)
		{
			System.out.println("2");
			System.out.println("select * from teacher where name= '"+name+"'");
		    teacher tch=database.QueryName_T(name);
		    String psd = tch.getPsword();
		    if(psword.equals(psd) == true)
		    {
		       System.out.println("3");
		      request.setAttribute("nowtch", tch);
		      System.out.println("5");
		      RequestDispatcher rd=request.getRequestDispatcher(url1);
		      System.out.println("66");
		      rd.forward(request, response);
		    }
		    else
		    {
		    	System.out.println("4");
		    	RequestDispatcher rd=request.getRequestDispatcher(url);
			    rd.forward(request, response);
		    }
		    
		}
		
		else if(iButton2 != null)
		{
			System.out.println("6");
			student stu=database.QueryName_S(name);
		    String psd = stu.getPsword();
		    if(psword.equals(psd) == true)
		    {
		      System.out.println("7");
		      request.setAttribute("nowstu", stu);
		      RequestDispatcher rd=request.getRequestDispatcher(url2);
		      rd.forward(request, response);
		    }
		    else
		    {
		    	System.out.println("8");
		    	RequestDispatcher rd=request.getRequestDispatcher(url);
			    rd.forward(request, response);
		    }
		    
		}
		
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
