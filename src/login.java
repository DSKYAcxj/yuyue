import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
//import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.database;

import bean.event;
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
		
		ArrayList<event> list=new ArrayList<event>();
		ArrayList<teacher> teacherlist=new ArrayList<teacher>();
		int yue;
		int ri;
		int zhou;
		
		Calendar cal=Calendar.getInstance();    
		
		yue = cal.get(Calendar.MONTH)+1;    
		ri = cal.get(Calendar.DATE);   
		zhou = cal.get(Calendar.DAY_OF_WEEK);
		zhou = (zhou + 6) % 7;
		System.out.println("zhou:"+zhou);
		if(iButton1 != null)
		{
		    teacher tch=database.queryt_name(name);
		    String psd = tch.getpsword();
		    System.out.println("1!!!");
		    if(psword.equals(psd) == true)
		    {
		      list = database.showt_name(name,yue,ri);
		      request.setAttribute("nowyue", String.valueOf(yue));
		      request.setAttribute("nowri", String.valueOf(ri));
		      request.setAttribute("nowzhou", String.valueOf(zhou));
		      request.setAttribute("nowtch_name", tch.getname());
		      request.setAttribute("list", list);
		      System.out.println("2!!!");
		      System.out.println("name =" + tch.getname());
		      RequestDispatcher rd=request.getRequestDispatcher(url1);
		      rd.forward(request, response);
		      
		    }
		    else
		    {
		    	System.out.println("3!!!");
		    	RequestDispatcher rd=request.getRequestDispatcher(url);
			    rd.forward(request, response);
		    }
		    
		}
		
		else if(iButton2 != null)
		{
			student stu=database.querys_name(name);
		    String psd = stu.getpsword();
		    if(psword.equals(psd) == true)
		    {
		      list = database.shows_name(name,yue,ri);
		      teacherlist = database.queryall();
		      request.setAttribute("nowyue", String.valueOf(yue));
		      request.setAttribute("nowri", String.valueOf(ri));
		      request.setAttribute("nowzhou", String.valueOf(zhou));
		      request.setAttribute("nowstu_name", stu.getname());
		      request.setAttribute("list", list);
		      request.setAttribute("teacherlist", teacherlist);
		      RequestDispatcher rd=request.getRequestDispatcher(url2);
		      rd.forward(request, response);
		    }
		    else
		    {
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
