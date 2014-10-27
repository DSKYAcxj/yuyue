import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.student;
import bean.teacher;

public class Sselect extends HttpServlet {

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

		teacher tch =(teacher)request.getSession().getAttribute("nowtch");
        String fabu = tch.getFabu();
        student stu =(student)request.getSession().getAttribute("nowstu");
        String yuyue = stu.getYuyue();
        String beiyuyue = tch.getBeiyuyue();
        int lenth1 = fabu.length();
        boolean flg;
		String url = "STxt.jsp";
		response.setContentType("text/html");
		response.setCharacterEncoding("GBK");
		String[] tslt=request.getParameterValues("S_chse");
		String T_c = request.getParameter("S_qr");
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
        String date [] = new String [7];
        date [0] = "Monday";
        date [1] = "Tuesday";
        date [2] = "Wednesday";
        date [3] = "Thursday";
        date [4] = "Friday";
        date [5] = "Saturday";
        date [6] = "Sunday";
        int j =0,di;
        boolean ftg;
        String tmp = "";
        System.out.println("Start!");
        System.out.println("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
        if(T_c != null)
		{
        	tmp = "";
			System.out.println(tslt.length);
			for (int i = 0; i< tslt.length; i++)
			{
				System.out.println(tslt[i]);
				ftg = false;
				for ( di = 0; di< 7; di++)
				{
				 for ( j = 0; j< 10; j++)
				 {
			 		  if(tslt[i].equals(date[di]+serial[j]) == true)
			 			  
			 		  {
			 			  
			 			  ftg = true;
			 			  break;
			 			  
			 			  
			 		  }		  
		 		}
				 
				 if( ftg == true)
				 {
					 break;
				 }
				}
				System.out.println("di="+di+"j"+j);
				System.out.println("bei"+beiyuyue);
				beiyuyue += String.valueOf( di)+ String.valueOf( j);
				System.out.println("bei"+beiyuyue);
				System.out.println("yu"+yuyue);
				yuyue +=    String.valueOf( di)+ String.valueOf( j);
				System.out.println("yu"+yuyue);
				System.out.println("ceshi:i="+i+" j="+j);
			}
			
			
			System.out.println("tmp = "+tmp);
			System.out.println("fabu = "+fabu);
			for(int i = 1 ;i< lenth1; i += 2)
			{
				 flg =true;
				 for( j =1; j < beiyuyue.length(); j += 2)
				 {
					  if((fabu.charAt(i) == beiyuyue.charAt(j)) && (fabu.charAt(i - 1) == beiyuyue.charAt(j - 1)))
						  {flg = false;break;}
				 }
				 if (flg == true)
				 {
					   System.out.println("i = "+i);
					   System.out.println("charAt(i - 1) = "+fabu.charAt(i - 1));
					   tmp += String.valueOf(fabu.charAt(i - 1)) + String.valueOf(fabu.charAt(i));
					   System.out.println("tmp = "+tmp);
				 }
				 System.out.println("flg = "+flg);
			}
			System.out.println("tmp = "+tmp);
			tch.setFabu(tmp);
			System.out.println("beiyuyue = "+beiyuyue);
			tch.setBeiyuyue(beiyuyue);
			System.out.println("yuyue = "+yuyue);
			stu.setYuyue(yuyue);
			database.deleteInfo_T(tch.getName());
			database.addInfo_T(tch);
			database.deleteInfo_S(stu.getName());
			database.addInfo_S(stu);	
		}
		request.setAttribute("nowtch", tch);
		request.setAttribute("nowstu", stu);
		RequestDispatcher rd=request.getRequestDispatcher(url);
		rd.forward(request, response);
		return;
	}
	
	public void init() throws ServletException {
		// Put your code here
	}
}