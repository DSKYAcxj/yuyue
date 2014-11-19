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
     System.out.println("学生!!!");
     student stu = (student)request.getAttribute("nowstu");
     String s_name = (String)request.getAttribute("nowstu_name");
     System.out.println("s_name!!!"+s_name);
     ArrayList<event> list=new ArrayList<event>();
     list = database.shows_name(s_name);
     String et_date;
     String et_time;
     
    %>
  <form  name="form" method="post" action="s_deal">
    <table width="2000" border="1" align="center" height="">
  <tr>
     <td align="center" style="width: 40px; ">周一</td>
      <%
     Iterator<event> iter1=list.iterator(); 
     System.out.println("学生2!!!");
     while(iter1.hasNext()){
     System.out.println("学生成功!!!");
    		event et=(event)iter1.next();
    		et_date = et.getdate();
    		et_time = et.gettime();
    		if(Integer.parseInt(et_date) == 1)
    		{
    		
    		   if(et.gets_name() != null)
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%></td>					    
    		   <%
    		   }
    		   else
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%></td>					    
    		   <%
    		   } 
    		}
    }
    %>
  </tr>
  <tr>
     <td align="center" style="width: 40px; ">周二</td>
      <%
     Iterator<event> iter2=list.iterator(); 
     while(iter2.hasNext()){
    		event et=(event)iter2.next();
    		et_date = et.getdate();
    		et_time = et.gettime();
    		if(Integer.parseInt(et_date) == 2)
    		{
    		
    		   if(et.gets_name() != null)
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%></td>					    
    		   <%
    		   }
    		   else
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%></td>					    
    		   <%
    		   } 
    		}
    	}
    %>
  </tr>
 <tr>
     <td align="center" style="width: 40px; ">周三</td>
      <%
     Iterator<event> iter3=list.iterator(); 
     while(iter3.hasNext()){
    		event et=(event)iter3.next();
    		et_date = et.getdate();
    		et_time = et.gettime();
    		if(Integer.parseInt(et_date) == 3)
    		{
    		
    		   if(et.gets_name() != null)
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%></td>					    
    		   <%
    		   }
    		   else
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%></td>					    
    		   <%
    		   } 
    		}
    	}
    %>
  </tr>
 <tr>
     <td align="center" style="width: 40px; ">周四</td>
      <%
     Iterator<event> iter4=list.iterator(); 
     while(iter4.hasNext()){
    		event et=(event)iter4.next();
    		et_date = et.getdate();
    		et_time = et.gettime();
    		if(Integer.parseInt(et_date) == 4)
    		{
    		
    		   if(et.gets_name() != null)
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%></td>					    
    		   <%
    		   }
    		   else
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%></td>					    
    		   <%
    		   } 
    		}
    	}
    %>
  </tr>
  <tr>
     <td align="center" style="width: 40px; ">周五</td>
      <%
     Iterator<event> iter5=list.iterator(); 
     while(iter5.hasNext()){
    		event et=(event)iter5.next();
    		et_date = et.getdate();
    		et_time = et.gettime();
    		if(Integer.parseInt(et_date) == 5)
    		{
    		
    		   if(et.gets_name() != null)
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%></td>					    
    		   <%
    		   }
    		   else
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%></td>					    
    		   <%
    		   } 
    		}
    	}
    %>
  </tr>
  <tr>
     <td align="center" style="width: 40px; ">周六</td>
      <%
     Iterator<event> iter6=list.iterator(); 
     while(iter6.hasNext()){
    		event et=(event)iter6.next();
    		et_date = et.getdate();
    		et_time = et.gettime();
    		if(Integer.parseInt(et_date) == 6)
    		{
    		
    		   if(et.gets_name() != null)
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%></td>					    
    		   <%
    		   }
    		   else
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%></td>					    
    		   <%
    		   } 
    		}
    	}
    %>
  </tr>
  <tr>
     <td align="center" style="width: 40px; ">周天</td>
      <%
     Iterator<event> iter7=list.iterator(); 
     while(iter7.hasNext()){
    		event et=(event)iter7.next();
    		et_date = et.getdate();
    		et_time = et.gettime();
    		if(Integer.parseInt(et_date) == 7)
    		{
    		
    		   if(et.gets_name() != null)
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%></td>					    
    		   <%
    		   }
    		   else
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%></td>					    
    		   <%
    		   } 
    		}
    	}
    %>
  </tr>
            
    </table>
    
    <%
    session.setAttribute("nowstu",stu);
    session.setAttribute("nowstu_name",s_name);
    %>
        <table>
            <tr>
            <td>
            请输入想预约的老师姓名：
            </td>
            <td>
                <input type="text" name="request" style="width: 200px; ">
            </td>
            </tr>
            <tr>
            <td>
              	<input type="submit"  name="deal1"  value="预约" style="width: 100px; ">
      	    </td>
            <td>
              	<input type="submit"  name="deal2"  value="详情" style="width: 100px; ">
      	    </td>
      	    <td>
      	        <input type="submit"  name="deal3"  value="删除" style="width: 100px; ">
           	</td>
            </tr>
            </table>
    </form>

 	<p><a href="index.jsp">重新登录</a>
 	</p>
  </body>
</html>
