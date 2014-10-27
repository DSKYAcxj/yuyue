<%@ page language="java" import="java.util.*,bean.*" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
System.out.println("ok1");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Tchoose.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
     <%
          System.out.println("ok2");
          teacher tch =(teacher)session.getAttribute("nowtch");
          System.out.println("ok3");
          //String fabu = "2";
          String fabu = tch.getFabu();
          //String fabu =(String)session.getAttribute("nowfabu");
          System.out.println("ok"+fabu);
          //String beiyuyue = "1";
          String beiyuyue = tch.getBeiyuyue();
          System.out.println("ok"+beiyuyue);
          int lenth1 = fabu.length();
          int lenth2 = beiyuyue.length();
          boolean flg;
          int i;
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
      %>
     <table width="845" cellspacing="0" align="center">

  <tr>
    
    <td align="left" valign="top">
			<table cellspacing="0" width="600px" align="center">
			<tr>
				<td width="585"><span class="STYLE2">当前位置：</span>候选时间段</td>
			</tr>
		</table>
    	<form action="Tselect" method="post">
		<table width="500" align="center" cellspacing="0">
			<tr>
			<%
			       for(i = 0; i < 10; i++)
			       {
			            System.out.println(i);
			            flg = false;
			            for(int j = 0;j < lenth1; j++)if((int)(fabu.charAt(j)-'0') == i)flg = true;
			            for(int j = 0;j < lenth2; j++)if((int)(beiyuyue.charAt(j)-'0') == i)flg = true;
	                    System.out.println(flg);
	                    if(flg == false)
	                    {
	                    %>
	                    <td><input type="checkbox" name="T_chse" value= "<%=serial[i]%>"></td>					    
	                    <td><%=serial[i]%></td>	
	                    <%
	                    }
	                   		       
			       }
			 %>
			 <%
               session.setAttribute("nowtch",tch); 
%> 
			<tr>
				<td height="30" colspan="6" align="right">
					
					<input type='submit'  name="T_qr" value='确认'/>
			    </td>
			</tr>
		</table>
		</form>
	</td>
  </tr>
 
</table>
  </body>
</html>