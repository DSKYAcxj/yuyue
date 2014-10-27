<%@ page language="java" import="java.util.*,bean.*" pageEncoding="GBK"%>
<%@ page session="true" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Schoose2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     <%
          teacher tch =(teacher)request.getAttribute("nowtch");
          student stu =(student)request.getAttribute("nowstu");
          String fabu = tch.getFabu();
          System.out.println("fabu:"+fabu);
          String beiyuyue = tch.getBeiyuyue();
          System.out.println("beiyuyue:"+beiyuyue);
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
    	<form action="Sselect" method="post">
		<table width="500" align="center" cellspacing="0">
			<tr>
			<%
			       for(i = 0; i < 10; i++)
			       {
			            flg = false;
			            for(int j = 0;j < lenth1; j++)if((int)(fabu.charAt(j)-'0') == i)flg = true;
	                    if(flg == true)
	                    {
	                    %>
	                    <td><input type="checkbox" name="S_chse" value= "<%=serial[i]%>"></td>					    
	                    <td><%=serial[i]%></td>	
	                    <%
	                   	}	       
			       }
			 %>
			<tr>
				<td height="30" colspan="6" align="right">
					
					<input type='submit'  name="S_qr" value='确认'/>
			    </td>
			</tr>
		</table>
		</form>
	</td>
  </tr>
 <%
               session.setAttribute("nowtch",tch); 
               session.setAttribute("nowstu",stu);
 %>
</table>
  </body>
</html>
