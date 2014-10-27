<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
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
	<form  name="form" method="post" action="login"> 
                             师生见面预约系统：
        <table>
        <tr>
        <td>
        用户名：
        </td>
        <td>
        <input type="text" name="name" style="width: 200px; ">
        </td>
        </tr>
        <tr>
        <td>
        密码：
        </td>
        <td>
        <input type="text" name="psword" style="width: 200px; ">
        </td>
        </tr>
        
      	<tr>
      	<td>
      	<input type="submit"  name="op1"  value="教师登录" style="width: 100px; ">
      	</td>
      	<td>
      	<input type="submit"  name="op2" value="学生登录" style="width: 100px; ">
      	</td>
      	<td><a href="TTxt.jsp" target="_blank">[新用户注册]</a></td>
      	</tr>
      	</table>
      	</form>
  </body>
</html>
