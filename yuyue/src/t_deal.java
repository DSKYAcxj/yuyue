
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.event;
import bean.student;

import com.util.mail.MailSenderInfo;
import com.util.mail.SimpleMailSender;

import db.database;

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
		String tmps = (String)request.getSession().getAttribute("nowyue");
		int yue = Integer.parseInt(tmps);
		tmps = (String)request.getSession().getAttribute("nowri");
		int ri = Integer.parseInt(tmps);
		tmps = (String)request.getSession().getAttribute("nowzhou");
		int zhou = Integer.parseInt(tmps);
		String detail[] =request.getParameterValues("list");
		String url1 = "TTxt.jsp";
		String url3 = "error1.jsp";
		//String url2 = "Tshow.jsp";
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		String button1 = (String)request.getParameter("deal1");
		//String button2 = (String)request.getParameter("deal2");
		String button3 = (String)request.getParameter("deal3");
		//String button4 = (String)request.getParameter("deal4");
		String buttontime1 = (String)request.getParameter("datedeal1");
		String buttontime2 = (String)request.getParameter("datedeal2");
		String buttontime3 = (String)request.getParameter("datedeal3");
		String buttoner = (String)request.getParameter("error");
		ArrayList<event> list=new ArrayList<event>();
		int monthmax [] = new int [12];
        monthmax [0] = 31;
        monthmax [1] = 28;
        monthmax [2] = 31;
        monthmax [3] = 30;
        monthmax [4] = 31;
        monthmax [5] = 30;
        monthmax [6] = 31;
        monthmax [7] = 31;
        monthmax [8] = 30;
        monthmax [9] = 31;
        monthmax [10] = 30;
        monthmax [11] = 31;
		if(button1 != null)
		{
			//String message1 = (String)request.getParameter("message1").trim();
			String message2 = (String)request.getParameter("message2").trim();
			//String message3 = (String)request.getParameter("message3").trim();
			String time1 = (String)request.getParameter("time1").trim();
			String time2 = (String)request.getParameter("time2").trim();
			String time3 = (String)request.getParameter("time3").trim();
			String time4 = (String)request.getParameter("time4").trim();
			System.out.println("button1go!!!");
			boolean flg[] = new boolean[601];
			boolean fleag = true;;
			
			for (int ii = 0 ;ii < 601 ;ii ++)
			{
				flg[ii] = false;
			}
			
			int itt1,itt2,itt3,itt4;
			
			
			try{
				itt1 = Integer.parseInt(time1);
				itt2 = Integer.parseInt(time2);
				itt3 = Integer.parseInt(time3);
				itt4 = Integer.parseInt(time4);
			}
			catch(Exception e){
				list = database.showt_name(t_name,yue,ri);
				request.setAttribute("list", list);
			    request.setAttribute("nowtch_name", t_name);
			    request.setAttribute("nowyue", String.valueOf(yue));
			    request.setAttribute("nowri", String.valueOf(ri));
			    request.setAttribute("nowzhou", String.valueOf(zhou));
		    	RequestDispatcher rd=request.getRequestDispatcher(url3);
		    	rd.forward(request, response);
		    	return;
			}
			
			if(itt1<8||itt1>16||itt2<0||itt2>60||itt3<8||itt3>17||itt4<0||itt4>60||itt3<itt1)
			{
				list = database.showt_name(t_name,yue,ri);
				request.setAttribute("list", list);
			    request.setAttribute("nowtch_name", t_name);
			    request.setAttribute("nowyue", String.valueOf(yue));
			    request.setAttribute("nowri", String.valueOf(ri));
			    request.setAttribute("nowzhou", String.valueOf(zhou));
		    	RequestDispatcher rd=request.getRequestDispatcher(url3);
		    	rd.forward(request, response);
		    	return;
			}
			
			list = database.showt_name(t_name,yue,ri);
			
			Iterator<event> iter1=list.iterator(); 
		     while(iter1.hasNext()){
		    		event et=(event)iter1.next();
		    		int intt1,intt2,intt3,intt4;
		    		String flgtmp[] = et.gettime().split(" ");
		    		intt1 = Integer.parseInt(flgtmp[0]);
					intt2 = Integer.parseInt(flgtmp[1]);
					intt3 = Integer.parseInt(flgtmp[2]);
					intt4 = Integer.parseInt(flgtmp[3]);
					for (int ii = (intt1 - 8) * 60 + intt2; ii < (intt3 - 8) * 60 + intt4; ii++)
					{
						flg [ii] = true;
					}
		     }
			
		     
		     
		    for (int ii = (itt1 - 8) * 60 + itt2; (ii < (itt3 - 8) * 60 + itt4) && fleag == true; ii++) 
		    {
		    	if( flg [ii] == true)
		    	{
		    		fleag = false;
		    		break;
		    	}
		    }
		    
		    if(fleag == false)
		    {
		    	list = database.showt_name(t_name,yue,ri);
				request.setAttribute("list", list);
			    request.setAttribute("nowtch_name", t_name);
			    request.setAttribute("nowyue", String.valueOf(yue));
			    request.setAttribute("nowri", String.valueOf(ri));
			    request.setAttribute("nowzhou", String.valueOf(zhou));
		    	RequestDispatcher rd=request.getRequestDispatcher(url3);
		    	rd.forward(request, response);
		    	return;
		    }
		    
		     
			event et = new event();
			et.setid(t_name+" "+String.valueOf(yue)+" "+String.valueOf(ri)+" "+ time1 +" " + " " + time2+ " " + time3+ " "+time4);
			//System.out.println("id!!!" + t_name+" "+message1+" "+time1);
			et.sett_name(t_name);
			et.sets_name(null);
			et.setyue(yue);
			et.setri(ri);
			et.settime(time1+" "+time2+" "+time3+" "+time4);
			et.setdidian(message2);
			//et.setbeizhu(message3);
			database.addevent(et);
			list = database.showt_name(t_name,yue,ri);
			request.setAttribute("list", list);
		    request.setAttribute("nowtch_name", t_name);
		    request.setAttribute("nowyue", String.valueOf(yue));
		    request.setAttribute("nowri", String.valueOf(ri));
		    request.setAttribute("nowzhou", String.valueOf(zhou));
		    
		    
		    System.out.println("添加成功!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!11!!!");
		    
		    
	    	RequestDispatcher rd=request.getRequestDispatcher(url1);
	    	rd.forward(request, response);
	    	return;
		}
		/*
		if(button2 != null)
		{
		    request.setAttribute("nowtch_name", t_name);
	     	request.setAttribute("nowtch_detail", detail);
	    	RequestDispatcher rd=request.getRequestDispatcher(url2);
	    	rd.forward(request, response);
	    	return;
		}
		*/
		
		
		
		
		if(buttoner != null)
		{
			   request.setAttribute("nowtch_name", t_name);
			   request.setAttribute("nowyue", String.valueOf(yue));
			   request.setAttribute("nowri", String.valueOf(ri));
			   request.setAttribute("nowzhou", String.valueOf(zhou));
		       list = database.showt_name(t_name,yue,ri);
			   request.setAttribute("list", list);
		       RequestDispatcher rd=request.getRequestDispatcher(url1);
		       rd.forward(request, response);
		       return;
		}
		
		
		
		
		
		
		
		if(buttontime2 != null)
		{
			   if( ri == monthmax[yue - 1])
			   {
				   yue++;
				   ri = 1;
			   }
			   else
			   {
				   ri++;
			   }
			   zhou += 1;
			   zhou = zhou % 7;
			   request.setAttribute("nowtch_name", t_name);
			   request.setAttribute("nowyue", String.valueOf(yue));
			   request.setAttribute("nowri", String.valueOf(ri));
			   request.setAttribute("nowzhou", String.valueOf(zhou));
		       list = database.showt_name(t_name,yue,ri);
			   request.setAttribute("list", list);
		       RequestDispatcher rd=request.getRequestDispatcher(url1);
		       rd.forward(request, response);
		       return;
		}
		
		if(buttontime1 != null)
		{
			   if( ri == 1)
			   {
				   yue--;
				   ri = monthmax[yue - 1];
			   }
			   else
			   {
				   ri--;
			   }
			   zhou += 6;
			   zhou = zhou % 7;
			   request.setAttribute("nowtch_name", t_name);
			   request.setAttribute("nowyue", String.valueOf(yue));
			   request.setAttribute("nowri", String.valueOf(ri));
			   request.setAttribute("nowzhou", String.valueOf(zhou));
		       list = database.showt_name(t_name,yue,ri);
			   request.setAttribute("list", list);
		       RequestDispatcher rd=request.getRequestDispatcher(url1);
		       rd.forward(request, response);
		       return;
		}
		
		if(buttontime3 != null)
		{
			
			   System.out.println("成功跳转了!!!");
			   
			   int sum = 0;
			   String tmps1 , tmps2;
			   tmps1 = (String)request.getParameter("yue").trim();
			   
			   tmps2 = (String)request.getParameter("ri").trim();
			   
			   int new_yue,new_ri;
			   System.out.println("成功跳转了2!!!");
			   try{
				   new_yue = Integer.parseInt(tmps1);
				   new_ri = Integer.parseInt(tmps2);		   
			   }
			   catch(Exception e){
					list = database.showt_name(t_name,yue,ri);
					request.setAttribute("list", list);
				    request.setAttribute("nowtch_name", t_name);
				    request.setAttribute("nowyue", String.valueOf(yue));
				    request.setAttribute("nowri", String.valueOf(ri));
				    request.setAttribute("nowzhou", String.valueOf(zhou));
			    	RequestDispatcher rd=request.getRequestDispatcher(url3);
			    	rd.forward(request, response);
			    	return;
				}
			   System.out.println("成功跳转了3 + yue ri!!!" + new_yue +new_ri);
			   
			   if(new_yue < 1 || new_ri < 1 || new_ri > monthmax[new_yue - 1])
			   {
				    list = database.showt_name(t_name,yue,ri);
					request.setAttribute("list", list);
				    request.setAttribute("nowtch_name", t_name);
				    request.setAttribute("nowyue", String.valueOf(yue));
				    request.setAttribute("nowri", String.valueOf(ri));
				    request.setAttribute("nowzhou", String.valueOf(zhou));
			    	RequestDispatcher rd=request.getRequestDispatcher(url3);
			    	rd.forward(request, response);
			    	return;
			   }
			   
			   
			   
			   
			   if(new_yue == yue)
			   {
				   if(ri > new_ri)
				   {   
					   sum+= ri - new_ri;
					   while(sum > 0)sum-= 7;
					   sum = 0 - sum;
				   }
				   
				   else 
				   {	   
					   sum+= new_ri - ri;
				   }
				   
			}
			   
			   else if(new_yue > yue)
			   {
				   sum += monthmax [yue -1] - ri;
				   for (int j = yue + 1; j < new_yue; j++)
				   {
					   sum+= monthmax[j - 1];
				   }
				   
				   sum+= new_ri;
			   }
			   
			   else
			   {
				   sum+= ri;
				   for( int j = yue -1; j > new_yue ; j--)
				   {
					   sum+= monthmax[j - 1];
				   }
				   sum+= monthmax[new_yue - 1] - new_ri;
				   while(sum > 0)sum-= 7;
				   sum = 0 - sum;
			   }
			   
			   ri = new_ri;
			   yue = new_yue;
			   zhou+= sum;
			   zhou = zhou % 7;
			   
			   request.setAttribute("nowtch_name", t_name);
			   request.setAttribute("nowyue", String.valueOf(yue));
			   request.setAttribute("nowri", String.valueOf(ri));
			   request.setAttribute("nowzhou", String.valueOf(zhou));
		       list = database.showt_name(t_name,yue,ri);
			   request.setAttribute("list", list);
		       RequestDispatcher rd=request.getRequestDispatcher(url1);
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
			      mailInfo.setContent(String.valueOf(yue) + "月" + String.valueOf(ri)+"日        "+"周"+String.valueOf(zhou)+"的"+et.gettime() + "被取消了");   
			         //这个类主要来发送邮件  
			      SimpleMailSender sms = new SimpleMailSender();  
			      sms.sendTextMail(mailInfo);//发送文体格式   
				 }
				database.deleteevent(detail[i]);
			}
			
		    request.setAttribute("nowtch_name", t_name);
		    request.setAttribute("nowyue", String.valueOf(yue));
		    request.setAttribute("nowri", String.valueOf(ri));
		    request.setAttribute("nowzhou", String.valueOf(zhou));
	     	list = database.showt_name(t_name,yue,ri);
			request.setAttribute("list", list);
	    	RequestDispatcher rd=request.getRequestDispatcher(url1);
	    	rd.forward(request, response);
	    	return;
		}
		/*
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
		*/
	}
	
	public void init() throws ServletException {
		// Put your code here
	}
}