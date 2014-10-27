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
        int j;
        String tmp = "";
		if(T_c != null)
		{
			for (int i = 0; i< tslt.length; i++)
			{
				for ( j = 0; j< 10; j++)
				{
					  if(tslt[i].equals(serial[j]) == true)break;
				}
				beiyuyue += String.valueOf( j);
				yuyue += String.valueOf( j);
				System.out.println("ceshi:i="+i+" j="+j);
			}
			
			for(int i =0 ;i< lenth1; i++)
			{
				 flg =true;
				 for( j =0; j < beiyuyue.length(); j++)
				 {
					  if(fabu.charAt(i) == beiyuyue.charAt(j))flg = false;
				 }
				 if (flg == true)
					   tmp += fabu.charAt(i);
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