import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.database;
import bean.event;
import bean.student;
import bean.teacher;

public class s_deal extends HttpServlet {

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
		String s_name =(String)request.getSession().getAttribute("nowstu_name");
		student stu = (student)request.getSession().getAttribute("nowstu");
		String detail[] =request.getParameterValues("list");
		String url1 = "STxt.jsp";
		String url2 = "Sshow.jsp";
		String url3 = "Schoose.jsp";
		response.setContentType("text/html");
		response.setCharacterEncoding("GBK");
		String button1 = (String)request.getParameter("deal1");
		String button2 = (String)request.getParameter("deal2");
		String button3 = (String)request.getParameter("deal3");
		String button4 = (String)request.getParameter("deal4");
		String button5 = (String)request.getParameter("deal5");
		if(button1 != null)
		{
			String truename = (String)request.getParameter("request");
			teacher tch = database.querytruename(truename);
		    request.setAttribute("nowstu_name", s_name);
		    request.setAttribute("nowtch_name", tch.getname());
	     	request.setAttribute("nowstu", stu);
	     	request.setAttribute("nowtch", tch);
	     	System.out.println("预约成功!!!"+s_name);
	     	System.out.println("预约成功!!!"+tch.getname());
	    	RequestDispatcher rd=request.getRequestDispatcher(url3);
	    	rd.forward(request, response);
	    	return;
		}
		
		if(button2 != null)
		{
		    request.setAttribute("nowstu_name", s_name);
	     	request.setAttribute("nowstu_detail", detail);
	    	RequestDispatcher rd=request.getRequestDispatcher(url2);
	    	rd.forward(request, response);
	    	return;
		}
		
		if(button3 != null)
		{
			
			for(int i = 0; i < detail.length; i++)
			{ 
				System.out.println("正在删除!!!"+detail[i]);
				event et = database.queryid(detail[i]);
				String nt_name = et.gett_name();
				String ndate = et.getdate();
				String ntime = et.gettime();
				 System.out.println("Id + =!!!"+ nt_name + " "+ndate + " " + ntime);
				et.setid(nt_name + " "+ndate + " " + ntime);
				et.sets_name(null);
				et.setbeizhu(null);
				database.addevent(et);	
				database.deleteevent(detail[i]);	
			}
		    request.setAttribute("nowstu_name", s_name);
	     	request.setAttribute("nowstu", stu);
	    	RequestDispatcher rd=request.getRequestDispatcher(url1);
	    	rd.forward(request, response);
	    	return;
		}
		
		if(button4 != null)
		{
		    request.setAttribute("nowstu_name", s_name);
	     	request.setAttribute("nowstu", stu);
	    	RequestDispatcher rd=request.getRequestDispatcher(url1);
	    	rd.forward(request, response);
	    	return;
		}
		
		if(button5 != null)
		{
			String beizhu = (String)request.getParameter("beizhu");
			for(int i = 0 ; i < detail.length; i++)
			{
				event et = database.queryid(detail[i]);
				String nt_name = et.gett_name();
				String ndate = et.getdate();
				String ntime = et.gettime();
				et.setid(nt_name + " "+ s_name +" "+ndate + " " + ntime);
				et.sets_name(s_name);
				et.setbeizhu(beizhu);
				database.deleteevent(detail[i]);
				database.addevent(et);
			}
		    request.setAttribute("nowstu_name", s_name);
	     	request.setAttribute("nowstu", stu);
	    	RequestDispatcher rd=request.getRequestDispatcher(url1);
	    	rd.forward(request, response);
	    	return;
		}
	}
	
	public void init() throws ServletException {
		// Put your code here
	}
}