<%@ page language="java" import="java.util.*,bean.*,db.*" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Tshow.jsp' starting page</title>
    
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

    预约时间详细信息页面<br>
    <%
        String detail[] = (String [])request.getAttribute("nowtch_detail");
        String t_name = (String)request.getAttribute("nowtch_name");
        request.setAttribute("nowtch_name", t_name);
        session.setAttribute("nowtch_name",t_name);
        for (int i = 0;i < detail.length; i++)
        {
              event et = database.queryid(detail[i]);
              teacher tch = database.queryt_name(et.gett_name());
              student stu = database.querys_name(et.gets_name());
              String et_time = et.gettime();
              %>
              <table>
              <tr>
              <td width="180" colspan="1" align="center" >学生名：</td>
              <td><%= stu.gettruename() %></td>
              </tr>
              <tr>
              <td width="180" colspan="1" align="center" >时间：</td>
              <td><%= et_time%></td>
              </tr>
              <tr>
              <td width="180" colspan="1" align="center" >地点：</td>
              <td><%= et.getdidian() %></td>
              </tr>
              <tr>
              <td width="180" colspan="1" align="center" >备注：</td>
              <td><%= et.getbeizhu() %></td>
              </tr>
              </table>
              <%
        }
   %>  
   <form  name="form" method="post" action="t_deal">
   <table>
   <tr>
            <td>
              	<input type="submit"  name="deal4"  value="返回" style="width: 100px; ">
      	    </td>
   </tr>
   </table>
   </form> 
  </body>
</html>
