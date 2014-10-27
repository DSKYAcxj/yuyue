<%@ page language="java" import="java.util.*,bean.*" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
System.out.println("zok1");
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
  
  <% 
      System.out.println("zok2");
     teacher tch =(teacher)request.getAttribute("nowtch");
     String fabu = tch.getFabu();
     String beiyuyue = tch.getBeiyuyue();
     System.out.println("zok3");
     boolean flg;
     System.out.println(fabu);
     System.out.println(beiyuyue);
     System.out.println("zok4");
     int lenth1 = fabu.length();
     int lenth2 = beiyuyue.length();
    %>
    <table width="1200" border="1" align="center" height="">
  <tr>
     <td align="center" style="width: 125px; "><font color="#0000ff">已发布</font>/<font color="#ff0000">已被预约</font></td>
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
        flg = false;
        System.out.println("-----------");
        for (int i = 0; i< lenth1; i++)
        {
                  if(fabu.charAt(i) == '0')
                  {
                       %>
                        <td align="center" style="width: 125px; "><font color="#0000ff">已发布</font></td>
                       <%
                       flg = true;
                   }
                       
                       
        }
        for (int i = 0; i< lenth2; i++)
        {
                  if(beiyuyue.charAt(i) == '0')
                  {
                       %>
                        <td align="center" style="width: 125px; "><font color="#ff0000">已被预约</font></td>
                       <%
                   flg = true;    
                  }     
        }
        if(flg == false)
        %>
        <td align="center" style="width: 125px; "></td>
        <%
        System.out.println("$$$$$$");
      %>
   </tr>
   <tr>
     <td align="center" style="width: 125px; ">9:00-9:30</td>
     <%
        flg = false;
        System.out.println("********");
        for (int i = 0; i< lenth1; i++)
        {
                  if(fabu.charAt(i) == '1')
                  {
                       %>
                        <td align="center" style="width: 125px; "><font color="#0000ff">已发布</font></td>
                       <%
                       flg = true;
                   }
                       
                       
        }
        for (int i = 0; i< lenth2; i++)
        {
                  if(beiyuyue.charAt(i) == '1')
                  {
                       %>
                        <td align="center" style="width: 125px; "><font color="#ff0000">已被预约</font></td>
                       <%
                   flg = true; 
                   System.out.println("right");   
                  }     
        }
        if(flg == false)
        {
        %>
        <td align="center" style="width: 125px; "></td>
        <%
        System.out.println("$$$$$$");
        }
      %>
   </tr>
   <tr>
     <td align="center" style="width: 125px; ">9:30-10:00</td>
     <%
        flg = false;
        for (int i = 0; i< lenth1; i++)
        {
                  if(fabu.charAt(i) == '2')
                  {
                       %>
                        <td align="center" style="width: 125px; "><font color="#0000ff">已发布</font></td>
                       <%
                       flg = true;
                   }
                       
                       
        }
        for (int i = 0; i< lenth2; i++)
        {
                  if(beiyuyue.charAt(i) == '2')
                  {
                       %>
                        <td align="center" style="width: 125px; "><font color="#ff0000">已被预约</font></td>
                       <%
                   flg = true;    
                  }     
        }
        if(flg == false)
        %>
        <td align="center" style="width: 125px; "></td>
        <%
      %>
   </tr>
   <tr>
     <td align="center" style="width: 125px; ">10:00-10:30</td>
     <%
        flg = false;
        for (int i = 0; i< lenth1; i++)
        {
                  if(fabu.charAt(i) == '3')
                  {
                       %>
                        <td align="center" style="width: 125px; "><font color="#0000ff">已发布</font></td>
                       <%
                       flg = true;
                   }
                       
                       
        }
        for (int i = 0; i< lenth2; i++)
        {
                  if(beiyuyue.charAt(i) == '3')
                  {
                       %>
                        <td align="center" style="width: 125px; "><font color="#ff0000">已被预约</font></td>
                       <%
                   flg = true;    
                  }     
        }
        if(flg == false)
        %>
        <td align="center" style="width: 125px; "></td>
        <%
      %>
   </tr>
   <tr>
     <td align="center" style="width: 125px; ">10:30-11:00</td>
     <%
        flg = false;
        for (int i = 0; i< lenth1; i++)
        {
                  if(fabu.charAt(i) == '4')
                  {
                       %>
                        <td align="center" style="width: 125px; "><font color="#0000ff">已发布</font></td>
                       <%
                       flg = true;
                   }
                       
                       
        }
        for (int i = 0; i< lenth2; i++)
        {
                  if(beiyuyue.charAt(i) == '4')
                  {
                       %>
                        <td align="center" style="width: 125px; "><font color="#ff0000">已被预约</font></td>
                       <%
                   flg = true;    
                  }     
        }
        if(flg == false)
        %>
        <td align="center" style="width: 125px; "></td>
        <%
      %>
   </tr>

   <tr>
     <td align="center" style="width: 125px; ">14:30-15:00</td>
    <%
        flg = false;
        for (int i = 0; i< lenth1; i++)
        {
                  if(fabu.charAt(i) == '5')
                  {
                       %>
                        <td align="center" style="width: 125px; "><font color="#0000ff">已发布</font></td>
                       <%
                       flg = true;
                   }
                       
                       
        }
        for (int i = 0; i< lenth2; i++)
        {
                  if(beiyuyue.charAt(i) == '5')
                  {
                       %>
                        <td align="center" style="width: 125px; "><font color="#ff0000">已被预约</font></td>
                       <%
                   flg = true;    
                  }     
        }
        if(flg == false)
        %>
        <td align="center" style="width: 125px; "></td>
        <%
      %>
   </tr>
   <tr>
     <td align="center" style="width: 125px; ">15:00-15:30</td>
     <%
        flg = false;
        for (int i = 0; i< lenth1; i++)
        {
                  if(fabu.charAt(i) == '6')
                  {
                       %>
                        <td align="center" style="width: 125px; "><font color="#0000ff">已发布</font></td>
                       <%
                       flg = true;
                   }
                       
                       
        }
        for (int i = 0; i< lenth2; i++)
        {
                  if(beiyuyue.charAt(i) == '6')
                  {
                       %>
                        <td align="center" style="width: 125px; "><font color="#ff0000">已被预约</font></td>
                       <%
                   flg = true;    
                  }     
        }
        if(flg == false)
        %>
        <td align="center" style="width: 125px; "></td>
        <%
      %>
   </tr>
   <tr>
     <td align="center" style="width: 125px; ">15:30-16:00</td>
    <%
        flg = false;
        for (int i = 0; i< lenth1; i++)
        {
                  if(fabu.charAt(i) == '7')
                  {
                       %>
                        <td align="center" style="width: 125px; "><font color="#0000ff">已发布</font></td>
                       <%
                       flg = true;
                   }
                       
                       
        }
        for (int i = 0; i< lenth2; i++)
        {
                  if(beiyuyue.charAt(i) == '7')
                  {
                       %>
                        <td align="center" style="width: 125px; "><font color="#ff0000">已被预约</font></td>
                       <%
                   flg = true;    
                  }     
        }
        if(flg == false)
        %>
        <td align="center" style="width: 125px; "></td>
        <%
      %>
   </tr>
   <tr>
     <td align="center" style="width: 125px; ">16:00-16:30</td>
     <%
        flg = false;
        for (int i = 0; i< lenth1; i++)
        {
                  if(fabu.charAt(i) == '8')
                  {
                       %>
                        <td align="center" style="width: 125px; "><font color="#0000ff">已发布</font></td>
                       <%
                       flg = true;
                   }
                       
                       
        }
        for (int i = 0; i< lenth2; i++)
        {
                  if(beiyuyue.charAt(i) == '8')
                  {
                       %>
                        <td align="center" style="width: 125px; "><font color="#ff0000">已被预约</font></td>
                       <%
                   flg = true;    
                  }     
        }
        if(flg == false)
        %>
        <td align="center" style="width: 125px; "></td>
        <%
      %>
   </tr>
   <tr>
     <td align="center" style="width: 125px; ">16:30-17:00</td>
   <%
        flg = false;
        for (int i = 0; i< lenth1; i++)
        {
                  if(fabu.charAt(i) == '9')
                  {
                       %>
                        <td align="center" style="width: 125px; "><font color="#0000ff">已发布</font></td>
                       <%
                       flg = true;
                   }
                       
                       
        }
        for (int i = 0; i< lenth2; i++)
        {
                  if(beiyuyue.charAt(i) == '9')
                  {
                       %>
                        <td align="center" style="width: 125px; "><font color="#ff0000">已被预约</font></td>
                       <%
                   flg = true;    
                  }     
        }
        if(flg == false)
        %>
        <td align="center" style="width: 125px; "></td>
        <%
      %>
   </tr>
   
  
    </table>
    <% 
    session.setAttribute("nowtch",tch);
    String url =response.encodeURL("Tchoose.jsp");
%>


 	<p><a href="index.jsp">返回首页</a>
 	<a href='<%=url%>'>进入发布界面</a></p>
  </body>
</html>
