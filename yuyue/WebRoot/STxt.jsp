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
    
    <title>My JSP 'TTxt.jsp' starting page</title>
    
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
  <% student stu =(student)request.getAttribute("nowstu");
     String fabu = stu.getYuyue();
     int lenth1 = fabu.length();
     int di;
     boolean flg;
    %>
    <table width="1200" border="1" align="center" height="">
  <tr>
     <td align="center" style="width: 125px; "><font color="#0000ff">已预约</font></td>
     <td align="center" style="width: 125px; ">周一</td>
     <td align="center" style="width: 125px; ">周二</td>
     <td align="center" style="width: 125px; ">周三</td>
     <td align="center" style="width: 125px; ">周四</td>
     <td align="center" style="width: 125px; ">周五</td>
     <td align="center" style="width: 125px; ">周六</td>
     <td align="center" style="width: 125px; ">周日</td>
   </tr>
  
   <tr>
     <td align="center" style="width: 125px; ">8:30-9:00</td>
     <%
      for( di = 0; di < 7; di++)
      {
        flg = false;
        for (int i = 0; i< lenth1; i += 2)
        {
                  if(fabu.charAt(i+1) == '0' && (int)(fabu.charAt(i) - '0') == di)
                  {
                       flg = true;
                       %>
                        <td align="center" style="width: 125px; "><font color="#0000ff">已预约</font></td>
                       <%
                   }    
                       
        }
       if(flg == false)
       {
       %>
                        <td align="center" style="width: 125px; "></td>
       <%
       }
       }
      %>
   </tr>
   <tr>
     <td align="center" style="width: 125px; ">9:00-9:30</td>
     <%
        for( di = 0; di < 7; di++)
      {
        flg = false;
        for (int i = 0; i< lenth1; i += 2)
        {
                  if(fabu.charAt(i+1) == '1' && (int)(fabu.charAt(i) - '0') == di)
                  {
                       flg = true;
                       %>
                        <td align="center" style="width: 125px; "><font color="#0000ff">已预约</font></td>
                       <%
                   }    
                       
        }
       if(flg == false)
       {
       %>
                        <td align="center" style="width: 125px; "></td>
       <%
       }
       }
      %>
   </tr>
   <tr>
     <td align="center" style="width: 125px; ">9:30-10:00</td>
     <%
        for( di = 0; di < 7; di++)
      {
        flg = false;
        for (int i = 0; i< lenth1; i += 2)
        {
                  if(fabu.charAt(i+1) == '2' && (int)(fabu.charAt(i) - '0') == di)
                  {
                       flg = true;
                       %>
                        <td align="center" style="width: 125px; "><font color="#0000ff">已预约</font></td>
                       <%
                   }    
                       
        }
       if(flg == false)
       {
       %>
                        <td align="center" style="width: 125px; "></td>
       <%
       }
       }
      %>
   </tr>
   <tr>
     <td align="center" style="width: 125px; ">10:00-10:30</td>
     <%
        for( di = 0; di < 7; di++)
      {
        flg = false;
        for (int i = 0; i< lenth1; i += 2)
        {
                  if(fabu.charAt(i+1) == '3' && (int)(fabu.charAt(i) - '0') == di)
                  {
                       flg = true;
                       %>
                        <td align="center" style="width: 125px; "><font color="#0000ff">已预约</font></td>
                       <%
                   }    
                       
        }
       if(flg == false)
       {
       %>
                        <td align="center" style="width: 125px; "></td>
       <%
       }
       }
      %>
   </tr>
   <tr>
     <td align="center" style="width: 125px; ">10:30-11:00</td>
     <%
        for( di = 0; di < 7; di++)
      {
        flg = false;
        for (int i = 0; i< lenth1; i += 2)
        {
                  if(fabu.charAt(i+1) == '4' && (int)(fabu.charAt(i) - '0') == di)
                  {
                       flg = true;
                       %>
                        <td align="center" style="width: 125px; "><font color="#0000ff">已预约</font></td>
                       <%
                   }    
                       
        }
       if(flg == false)
       {
       %>
                        <td align="center" style="width: 125px; "></td>
       <%
       }
       }
      %>
   </tr>

   <tr>
     <td align="center" style="width: 125px; ">14:30-15:00</td>
    <%
        for( di = 0; di < 7; di++)
      {
        flg = false;
        for (int i = 0; i< lenth1; i += 2)
        {
                  if(fabu.charAt(i+1) == '5' && (int)(fabu.charAt(i) - '0') == di)
                  {
                       flg = true;
                       %>
                        <td align="center" style="width: 125px; "><font color="#0000ff">已预约</font></td>
                       <%
                   }    
                       
        }
       if(flg == false)
       {
       %>
                        <td align="center" style="width: 125px; "></td>
       <%
       }
       }
      %>
   </tr>
   <tr>
     <td align="center" style="width: 125px; ">15:00-15:30</td>
     <%
        for( di = 0; di < 7; di++)
      {
        flg = false;
        for (int i = 0; i< lenth1; i += 2)
        {
                  if(fabu.charAt(i+1) == '6' && (int)(fabu.charAt(i) - '0') == di)
                  {
                       flg = true;
                       %>
                        <td align="center" style="width: 125px; "><font color="#0000ff">已预约</font></td>
                       <%
                   }    
                       
        }
       if(flg == false)
       {
       %>
                        <td align="center" style="width: 125px; "></td>
       <%
       }
       }
      %>
   </tr>
   <tr>
     <td align="center" style="width: 125px; ">15:30-16:00</td>
     <%
        for( di = 0; di < 7; di++)
      {
        flg = false;
        for (int i = 0; i< lenth1; i += 2)
        {
                  if(fabu.charAt(i+1) == '7' && (int)(fabu.charAt(i) - '0') == di)
                  {
                       flg = true;
                       %>
                        <td align="center" style="width: 125px; "><font color="#0000ff">已预约</font></td>
                       <%
                   }    
                       
        }
       if(flg == false)
       {
       %>
                        <td align="center" style="width: 125px; "></td>
       <%
       }
       }
      %>
   </tr>
   <tr>
     <td align="center" style="width: 125px; ">16:00-16:30</td>
     <%
        for( di = 0; di < 7; di++)
      {
        flg = false;
        for (int i = 0; i< lenth1; i += 2)
        {
                  if(fabu.charAt(i+1) == '8' && (int)(fabu.charAt(i) - '0') == di)
                  {
                       flg = true;
                       %>
                        <td align="center" style="width: 125px; "><font color="#0000ff">已预约</font></td>
                       <%
                   }    
                       
        }
       if(flg == false)
       {
       %>
                        <td align="center" style="width: 125px; "></td>
       <%
       }
       }
      %>
   </tr>
   <tr>
     <td align="center" style="width: 125px; ">16:30-17:00</td>
   <%
        for( di = 0; di < 7; di++)
      {
        flg = false;
        for (int i = 0; i< lenth1; i += 2)
        {
                  if(fabu.charAt(i+1) == '9' && (int)(fabu.charAt(i) - '0') == di)
                  {
                       flg = true;
                       %>
                        <td align="center" style="width: 125px; "><font color="#0000ff">已预约</font></td>
                       <%
                   }    
                       
        }
       if(flg == false)
       {
       %>
                        <td align="center" style="width: 125px; "></td>
       <%
       }
       }
      %>
   </tr>
   
  
    </table>
    <% 
    session.setAttribute("nowstu",stu);
    String url =response.encodeURL("Schoose.jsp");
    %>
 	<p><a href="index.jsp">返回首页</a>
 	<a href='<%=url%>'>进入预约界面</a></p>
  </body>
</html>
