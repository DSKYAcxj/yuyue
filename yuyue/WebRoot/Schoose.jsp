<%@ page language="java" import="java.util.*,bean.*" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Schoose.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">


  </head>
  
  <body>
           <%student stu =(student)session.getAttribute("nowstu"); %>
           <form  name="form" method="post" action="require" style="height: 60px; width: 818px; "> 
                              请输入老师的名字：
      	<input type="text" name="R_name" style="width: 589px; ">
      	<input type="submit"  value="确定" style="width: 65px; ">
      	</form>
      	<%
      	    session.setAttribute("nowtch",stu);
      	 %>
  </body>
</html>
