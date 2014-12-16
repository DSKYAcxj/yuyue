<%@ page language="java" import="java.util.*,bean.*,java.lang.String,db.*" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'error2.jsp' starting page</title>
    
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
  
     String s_name = (String)request.getAttribute("nowstu_name");
     String t_name = (String)request.getAttribute("nowtch_name");
     String tmps = (String)request.getAttribute("nowyue");
     int yue = Integer.parseInt(tmps);
	 tmps = (String)request.getAttribute("nowri");
     int ri = Integer.parseInt(tmps);
	 tmps = (String)request.getAttribute("nowzhou");
     int zhou = Integer.parseInt(tmps);
     
     session.setAttribute("nowyue", String.valueOf(yue));
     session.setAttribute("nowri", String.valueOf(ri));
     session.setAttribute("nowzhou", String.valueOf(zhou));
     session.setAttribute("nowstu_name",s_name);
     session.setAttribute("nowtch_name",t_name);
       
   %>
   
    您所输入的时间不符合要求或者您所输入的时间与您之前发布的时间有所重合，请返回重新输入 <br>
    <form  name="form" method="post" action="s_deal2">
    <input type="submit"  name="error"  value="返回" style="width: 50px; ">          
    </form>
   
   
  </body>
</html>
