<%@ page language="java" import="java.util.*,bean.*,java.lang.String" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
System.out.println("成功!!!");
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
     teacher tch = (teacher)request.getAttribute("nowtch");
     String t_name = (String)request.getAttribute("nowtch_name");
     System.out.println("4!!!");
     System.out.println("name =" + t_name);
     /*
     ArrayList<event> list=new ArrayList<event>();
     list = database.showt_name(t_name);
     */
     ArrayList<event> list=(ArrayList<event>)request.getAttribute("list");
     String et_date;
     String et_time;
     System.out.println("5!!!");
    %>
  <form  name="form" method="post" action="t_deal">
    <table width="2000" border="1" align="center" height="">
  <tr>
     <td align="center" style="width: 40px; ">周一</td>
      <%
      System.out.println("6!!!");
     Iterator<event> iter1=list.iterator(); 
     while(iter1.hasNext()){
    		event et=(event)iter1.next();
    		et_date = et.getdate();
    		System.out.println("7!!!");
    		System.out.println("id = " + et.getid());
    		System.out.println("s_name = " + et.gets_name());
    		System.out.println("date = " + et.getdate());
    		System.out.println("time = " + et.gettime());
    		System.out.println("didian = " + et.getdidian());
    		System.out.println("beizhu = " + et.getbeizhu());
    		et_time = et.gettime();
    		System.out.println("wait :" + et_date);
    		if(Integer.parseInt(et_date) == 1)
    		{
    		
    		   System.out.println("8!!!");
    		   if(et.gets_name() == null)
    		   {
    		   System.out.println("9!!!");
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%= et_time %>未被预约</td>					    
    		   <%
    		   }
    		   else
    		   {
    		   System.out.println("10!!!");
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%>已被预约</td>					    
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
    		
    		   if(et.gets_name() == null)
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%>未被预约</td>					    
    		   <%
    		   }
    		   else
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%>已被预约</td>					    
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
    		
    		   if(et.gets_name() == null)
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%>未被预约</td>					    
    		   <%
    		   }
    		   else
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%>已被预约</td>					    
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
    		
    		   if(et.gets_name() == null)
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%>未被预约</td>					    
    		   <%
    		   }
    		   else
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%>已被预约</td>					    
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
    		
    		   if(et.gets_name() == null)
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%>未被预约</td>					    
    		   <%
    		   }
    		   else
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%>已被预约</td>					    
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
    		
    		   if(et.gets_name() == null)
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%>未被预约</td>					    
    		   <%
    		   }
    		   else
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%>已被预约</td>					    
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
    		
    		   if(et.gets_name() == null)
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%>未被预约</td>					    
    		   <%
    		   }
    		   else
    		   {
    		   %>
    		   <td><input type="checkbox" name="list" value= "<%=et.getid()%>"><%=et_time%>已被预约</td>					    
    		   <%
    		   } 
    		}
    	}
    %>
  </tr>
            
    </table>
    
    <%
    session.setAttribute("nowtch",tch);
    session.setAttribute("nowtch_name",t_name);
    %>
    <table>
        <tr>
        <td>
        日期：
        </td>
        <td>
        请输入星期几（数字，1-7）
        </td>
        <td>
        
        <input type="text" name="message1" style="width: 30px; ">
        
        </td>
        </tr>
        <tr>
        <td>
       时间：
        </td>
        <td>
    （请用24时制）
        </td>
        <td>
        <input type="text" name="time1" style="width: 30px; ">
        </td>
        <td>
        :
        </td>
         <td>
        <input type="text" name="time2" style="width: 30px; ">
        </td>
        <td>
        -------
        </td>
        
        <td>
        <input type="text" name="time3" style="width: 30px; ">
        </td>
        <td>
        :
        </td>
         <td>
        <input type="text" name="time4" style="width: 30px; ">
        </td>
        </tr>
        <tr>
        <td>
地点：
        </td>
        <td>
        <input type="text" name="message2" style="width: 250px; ">
        </td>
        </tr>
        <tr>
        <td>
备注：
        </td>
        <td>
        <input type="text" name="message3" style="width: 250px; ">
        </td>
        </tr>
        </table>
        <table>
            <tr>
            <td>
              	<input type="submit"  name="deal1"  value="添加" style="width: 100px; ">
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
