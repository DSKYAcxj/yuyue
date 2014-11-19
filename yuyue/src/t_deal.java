import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.mail.MailSenderInfo;
import com.util.mail.SimpleMailSender;

import db.database;
import bean.event;
import bean.student;
import bean.teacher;

public class t_deal extends HttpServlet {

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
		String t_name =(String)request.getSession().getAttribute("nowtch_name");
		teacher tch = (teacher)request.getSession().getAttribute("nowtch");
		String detail[] =request.getParameterValues("list");
		String url1 = "TTxt.jsp";
		String url2 = "Tshow.jsp";
		response.setContentType("text/html");
		response.setCharacterEncoding("GBK");
		String button1 = (String)request.getParameter("deal1");
		String button2 = (String)request.getParameter("deal2");
		String button3 = (String)request.getParameter("deal3");
		String button4 = (String)request.getParameter("deal4");
		ArrayList<event> list=new ArrayList<event>();
        
		if(button1 != null)
		{
			String message1 = (String)request.getParameter("message1").trim();
			String message2 = (String)request.getParameter("message2").trim();
			String message3 = (String)request.getParameter("message3").trim();
			String time1 = (String)request.getParameter("time1").trim();
			String time2 = (String)request.getParameter("time2").trim();
			String time3 = (String)request.getParameter("time3").trim();
			String time4 = (String)request.getParameter("time4").trim();
			System.out.println("button1go!!!");
			event et = new event();
			et.setid(t_name+" "+message1+" "+time1);
			System.out.println("id!!!" + t_name+" "+message1+" "+time1);
			et.sett_name(t_name);
			et.sets_name(null);
			et.setdate(message1);
			et.settime(time1+":"+time2+"--"+time3+":"+time4);
			et.setdidian(message2);
			et.setbeizhu(message3);
			database.addevent(et);
			list = database.showt_name(t_name);
			request.setAttribute("list", list);
		    request.setAttribute("nowtch_name", t_name);
	     	request.setAttribute("nowtch", tch);
	    	RequestDispatcher rd=request.getRequestDispatcher(url1);
	    	rd.forward(request, response);
	    	return;
		}
		
		if(button2 != null)
		{
		    request.setAttribute("nowtch_name", t_name);
	     	request.setAttribute("nowtch_detail", detail);
	    	RequestDispatcher rd=request.getRequestDispatcher(url2);
	    	rd.forward(request, response);
	    	return;
		}
		
		if(button3 != null)
		{
			
			for(int i = 0; i < detail.length; i++)
			{
				  event et = database.queryid(detail[i]);
				  if(et.gets_name() != null)
				 {
				  student stu = database.querys_name(et.gets_name());
				  MailSenderInfo mailInfo = new MailSenderInfo();   
			      mailInfo.setMailServerHost("smtp.163.com");   
			      mailInfo.setMailServerPort("25");   
			      mailInfo.setValidate(true);   
			      mailInfo.setUserName("15104684631@163.com");   
			      mailInfo.setPassword("671023");//您的邮箱密码   
			      mailInfo.setFromAddress("15104684631@163.com");   
			      mailInfo.setToAddress(stu.getmail());   
			      mailInfo.setSubject("您预约了的时间被取消了");   
			      mailInfo.setContent("周"+et.getdate()+"的"+et.gettime());   
			         //这个类主要来发送邮件  
			      SimpleMailSender sms = new SimpleMailSender();  
			      sms.sendTextMail(mailInfo);//发送文体格式   
			      sms.sendHtmlMail(mailInfo);//发送html格式
				 }
				database.deleteevent(detail[i]);
			}
			
		    request.setAttribute("nowtch_name", t_name);
	     	request.setAttribute("nowtch", tch);
	     	list = database.showt_name(t_name);
			request.setAttribute("list", list);
	    	RequestDispatcher rd=request.getRequestDispatcher(url1);
	    	rd.forward(request, response);
	    	return;
		}
		
		if(button4 != null)
		{
		    request.setAttribute("nowtch_name", t_name);
	     	request.setAttribute("nowtch", tch);
	     	list = database.showt_name(t_name);
			request.setAttribute("list", list);
	    	RequestDispatcher rd=request.getRequestDispatcher(url1);
	    	rd.forward(request, response);
	    	return;
		}
	}
	
	public void init() throws ServletException {
		// Put your code here
	}
}