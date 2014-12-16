<%@ page language="java" import="java.util.*,bean.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <base href="<%=basePath%>">
    <link rel="stylesheet" href="file/1.css" type="text/css">
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	
	
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <script language=javaScript>
     <!--
     function clockon() {
     thistime= new Date();
     var hours=thistime.getHours();
     var minutes=thistime.getMinutes();
     var seconds=thistime.getSeconds();
     if (eval(hours) <10) {hours="0"+hours;}
     if (eval(minutes) < 10) {minutes="0"+minutes;}
     if (seconds < 10) {seconds="0"+seconds;}
     thistime =hours+":"+minutes+":"+seconds;
     mainbody.innerHTML=thistime;
     var timer=setTimeout("clockon()",1000);
}
-->
</script>
<style>   .b{background-image:url(image/5.jpg)}</style>
  </head>
  
  <body Class='b'>
  
  
  <div id="header" align="center">
  师生见面预约系统：<br>
  </div>
  <div id="sidebar" align="center">
  <IMG height="100" id="reflect" src="image/1.jpg"  width="237"><br>
  <SCRIPT language="JavaScript">
//  设置倒影函数
function water(){ 
setInterval("mdiv.filters.wave.phase+=10",100); 
} 
//  若是IE浏览器 
if (document.all){ 
document.write('<img height=100 width=237 id=mdiv src="'+document.all.reflect.src+'" style="filter:wave(strength=3,freq=3,phase=0,lightstrength=30)  blur() flipv()">');
window.onload=water(); // 调用函数 
} 
</SCRIPT>
     <div id="mainbody" style="position:relative; visibility:visible"></div>
<div id="mainbody" style="position:relative; visibility:visible"></div>
  </div>
  <div id="content" align="center">
  <form  name="form" method="post" action="login2"> 
                             
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
        <input type="password" name="psword" style="width: 200px; ">
        </td>
        </tr>
        
      	<tr>
      	<td>
      	<input align="left" type="submit"  name="op1"  value="教师登录" style="width: 100px; ">
      	</td>
      	<td>
      	<input align="left" type="submit"  name="op2" value="学生登录" style="width: 100px; ">
      	</td>
      	<td><a href="index.jsp" target="_blank">[新用户注册]</a></td>
      	</tr>
      	</table>
      	</form>
  </div>
  <div id="footer" align="right">
  <script language="JavaScript"> 
<!---
// 创建Date对象
today=new Date();
var hours = today.getHours();
var minutes = today.getMinutes();
var seconds = today.getSeconds();
//  转换成12小时制的时间
var timeValue = "<FONT COLOR=black>" + ((hours >12) ? hours -12 :hours); timeValue += ((minutes < 10) ? "<BLINK><FONT COLOR=black>:</FONT></BLINK>0" : "<BLINK><FONT COLOR=black>:</FONT></BLINK>") + minutes+"</FONT></FONT>";
timeValue += (hours >= 12) ? "<FONT COLOR=blue><I><B>pm</B></I></FONT>" : "<FONT COLOR=blue><B><I>am</I></B></FONT>";
//  创建数组
function initArray(){
this.length=initArray.arguments.length;
for(var I=0;I<this.length;I++)
//  对数组进行赋值
this[I+1]=initArray.arguments[I] ;
}
//  创建一唯数组，保存星期值
var d=new initArray("<font color=RED>星期日","<font color=black>星期一","<font color=black>星期二","<font color=black>星期三","<font color=black>星期四","<font color=black>星期五","<font color=red>星期六");
// 向页面中输出当前日期时间
document.write("<font color=black>",today.getYear(),"<font color=black>年","<font color=black>",today.getMonth()+1,"<font color=black>月","<font color=black>",today.getDate(),"<font color=black>日 </FONT>",d[today.getDay()+1]," ",timeValue);  
//-->
</script>
  </div>
  
  </body>
</html>
