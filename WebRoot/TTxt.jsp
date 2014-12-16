<%@ page language="java" import="java.util.*,bean.*,java.lang.String,db.*" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
System.out.println("成功!!!");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
  <SCRIPT LANGUAGE="JavaScript">
<!-- Begin
//  构造Date对象，并返回当前的年、月、日
var dDate = new Date();
var dCurMonth = dDate.getMonth();
var dCurDayOfMonth = dDate.getDate();
var dCurYear = dDate.getFullYear();
//  创建Object对象
var objPrevElement = new Object();
//  选择字体颜色
function fToggleColor(myElement) {
var toggleColor = "#ff0000";
if (myElement.id == "calDateText") {
if (myElement.color == toggleColor) {
myElement.color = "";
} else {
myElement.color = toggleColor;
   }
} else if (myElement.id == "calCell") {
for (var i in myElement.children) {
if (myElement.children[i].id == "calDateText") {
if (myElement.children[i].color == toggleColor) {
myElement.children[i].color = "";
} else {
myElement.children[i].color = toggleColor;
            }
         }
      }
   }
}
//  鼠标点击日期时
function fSetSelectedDay(myElement){
if (myElement.id == "calCell") {
if (!isNaN(parseInt(myElement.children["calDateText"].innerText))) {
myElement.bgColor = "#c0c0c0";
objPrevElement.bgColor = "";
document.all.calSelectedDate.value = parseInt(myElement.children["calDateText"].innerText);
objPrevElement = myElement;
      }
   }
}
// 返回一个月中第几天的值
function fGetDaysInMonth(iMonth, iYear) {
var dPrevDate = new Date(iYear, iMonth, 0);
return dPrevDate.getDate();
}
//  构造日历
function fBuildCal(iYear, iMonth, iDayStyle) {
var aMonth = new Array();
aMonth[0] = new Array(7);
aMonth[1] = new Array(7);
aMonth[2] = new Array(7);
aMonth[3] = new Array(7);
aMonth[4] = new Array(7);
aMonth[5] = new Array(7);
aMonth[6] = new Array(7);

// 设置星期的显示方式
if (iDayStyle == 1) {
aMonth[0][0] = "Sun";
aMonth[0][1] = "Mon";
aMonth[0][2] = "Tue";
aMonth[0][3] = "Wed";
aMonth[0][4] = "Thu";
aMonth[0][5] = "Fri";
aMonth[0][6] = "Sat";
} else {
aMonth[0][0] = "Su";
aMonth[0][1] = "Mo";
aMonth[0][2] = "Tu";
aMonth[0][3] = "We";
aMonth[0][4] = "Th";
aMonth[0][5] = "Fr";
aMonth[0][6] = "Sa";
}
// 构造日期函数
var dCalDate = new Date(iYear, iMonth-1, 1);
var iDayOfFirst = dCalDate.getDay();  // 返回星期值
// 返回这个月中的第几天值
var iDaysInMonth = fGetDaysInMonth(iMonth, iYear);
var iVarDate = 1;
var i, d, w;
for (d = iDayOfFirst; d < 7; d++) {
aMonth[1][d] = iVarDate;
iVarDate++;
}
// 向日历列表中添加数字
for (w = 2; w < 7; w++) {
for (d = 0; d < 7; d++) {
if (iVarDate <= iDaysInMonth) {
aMonth[w][d] = iVarDate;
iVarDate++;
      }
   }
}
return aMonth;
}
//  在页面中显示日历
function fDrawCal(iYear, iMonth, iCellWidth, iCellHeight, sDateTextSize, sDateTextWeight, iDayStyle) {
var myMonth;
myMonth = fBuildCal(iYear, iMonth, iDayStyle);
document.write("<table border='1'>");
document.write("<tr>");
document.write("<td align='center' style='FONT-FAMILY:Arial;FONT-SIZE:12px;FONT-WEIGHT: bold'>" + myMonth[0][0] + "</td>");
document.write("<td align='center' style='FONT-FAMILY:Arial;FONT-SIZE:12px;FONT-WEIGHT: bold'>" + myMonth[0][1] + "</td>");
document.write("<td align='center' style='FONT-FAMILY:Arial;FONT-SIZE:12px;FONT-WEIGHT: bold'>" + myMonth[0][2] + "</td>");
document.write("<td align='center' style='FONT-FAMILY:Arial;FONT-SIZE:12px;FONT-WEIGHT: bold'>" + myMonth[0][3] + "</td>");
document.write("<td align='center' style='FONT-FAMILY:Arial;FONT-SIZE:12px;FONT-WEIGHT: bold'>" + myMonth[0][4] + "</td>");
document.write("<td align='center' style='FONT-FAMILY:Arial;FONT-SIZE:12px;FONT-WEIGHT: bold'>" + myMonth[0][5] + "</td>");
document.write("<td align='center' style='FONT-FAMILY:Arial;FONT-SIZE:12px;FONT-WEIGHT: bold'>" + myMonth[0][6] + "</td>");
document.write("</tr>");
for (w = 1; w < 6; w++) {
document.write("<tr>");
for (d = 0; d < 7; d++) {
document.write("<td align='center' valign='top' width='" + iCellWidth + "' height='" + iCellHeight + "' id='calCell' style='CURSOR:Hand' onMouseOver='fToggleColor(this)' onMouseOut='fToggleColor(this)' onclick=fSetSelectedDay(this)>");
if (!isNaN(myMonth[w][d])) {
document.write("<font id='calDateText' onMouseOver='fToggleColor(this)' style='CURSOR:Hand;FONT-FAMILY:Arial;FONT-SIZE:" + sDateTextSize + ";FONT-WEIGHT:" + sDateTextWeight + "' onMouseOut='fToggleColor(this)' onclick=fSetSelectedDay(this)>" + myMonth[w][d] + "</font>");
} else {
document.write("<font id='calDateText' onMouseOver='fToggleColor(this)' style='CURSOR:Hand;FONT-FAMILY:Arial;FONT-SIZE:" + sDateTextSize + ";FONT-WEIGHT:" + sDateTextWeight + "' onMouseOut='fToggleColor(this)' onclick=fSetSelectedDay(this)>&nbsp;</font>");
}
document.write("</td>");
}
document.write("</tr>");
}
document.write("</table>");
}
//  刷新指定年、月的的日历内容
function fUpdateCal(iYear, iMonth) {
myMonth = fBuildCal(iYear, iMonth);
objPrevElement.bgColor = "";
document.all.calSelectedDate.value = "";
for (w = 1; w < 7; w++) {
for (d = 0; d < 7; d++) {
if (!isNaN(myMonth[w][d])) {
calDateText[((7*w)+d)-7].innerText = myMonth[w][d];
} else {
calDateText[((7*w)+d)-7].innerText = " ";
         }
      }
   }
}
// End -->
</script>
  
  
  
  
  
  
    <base href="<%=basePath%>">
    <link rel="stylesheet" href="file/2.css" type="text/css">
    <title>My JSP 'TTxt.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <script language="JavaScript">
//  设置初始值
var b = 1;
var c = true; 
//  创建淡入淡出函数
function fade(){
if(document.all);
// 增加透明度
if(c == true) {
b++;
}
//  减小透明度
if(b==100) {
b--;
c = false;
}
//  以下两个函数控制透明度
if(b==10) {
b++;
c = true;
}
if(c == false) {
b--;
}
PIC.filters.alpha.opacity=0 + b;  // 设置透明度
setTimeout("fade()",10);  //  设置间隔时间段，即每隔10毫秒调用fade()一次
}
</script>
  </head>
  
  <body bgcolor="#00804F" onLoad="snow()">
  
  
  
  <script language="JavaScript">
<!-- 
// 定义变量和数组
N = 40; 
Y = new Array();
X = new Array();
S = new Array();
A = new Array();
B = new Array();
M = new Array();
// 根据浏览器类型初始化变量V
V = (document.layers)?1:0;
// 返回浏览器的高度和宽度
iH=(document.layers)?window.innerHeight:window.document.body.clientHeight;
iW=(document.layers)?window.innerWidth:window.document.body.clientWidth;
//  
for (i=0; i < N; i++){                                                                
 Y[i]=Math.round(Math.random()*iH);
 X[i]=Math.round(Math.random()*iW);
 S[i]=Math.round(Math.random()*5+2);
 A[i]=0;
 B[i]=Math.random()*0.1+0.1;
 M[i]=Math.round(Math.random()*1+1);
}
// 在窗口中设置容器
if (V){  // NetScape浏览器
for (i = 0; i < N; i++)
{document.write("<LAYER NAME='sn"+i+"' LEFT=0 TOP=0 BGCOLOR='#FFFFF0' CLIP='0,0,"+M[i]+","+M[i]+"'></LAYER>");}
}
else{  // IE浏览器
document.write('<div style="position:absolute;top:0px;left:0px">');
document.write('<div style="position:relative">');
//  设置div容器的样式
for (i = 0; i < N; i++)
{document.write('<div id="si" style="position:absolute;top:0;left:0;width:'+M[i]+';height:'+M[i]+';background:#fffff0;font-size:'+M[i]+'"></div>');}
document.write('</div></div>');
}
// 实现降雪函数
function snow(){
// 初始化窗口的大小以及位置
var H=(document.layers)?window.innerHeight:window.document.body.clientHeight;
var W=(document.layers)?window.innerWidth:window.document.body.clientWidth;
var T=(document.layers)?window.pageYOffset:document.body.scrollTop;
var L=(document.layers)?window.pageXOffset:document.body.scrollLeft;
//  设置每一片雪花的效果
for (i=0; i < N; i++){
//  使用三角函数，实现雪花的飘动效果
sy=S[i]*Math.sin(90*Math.PI/180);
sx=S[i]*Math.cos(A[i]);
Y[i]+=sy;
X[i]+=sx; 
if (Y[i] > H){
Y[i]=-10;
//  随机设置雪花参数
X[i]=Math.round(Math.random()*W);
M[i]=Math.round(Math.random()*1+1);
S[i]=Math.round(Math.random()*5+2);
}
if (V){document.layers['sn'+i].left=X[i];document.layers['sn'+i].top=Y[i]+T;}
else{si[i].style.pixelLeft=X[i];si[i].style.pixelTop=Y[i]+T;} 
A[i]+=B[i];
}
//  每革10毫秒调用一次snow函数
setTimeout('snow()',10);
}
//-->
</script>
  
  
  
  
  <% 
     String t_name = (String)request.getAttribute("nowtch_name");
     String tmps = (String)request.getAttribute("nowyue");
     int yue = Integer.parseInt(tmps);
	 tmps = (String)request.getAttribute("nowri");
     int ri = Integer.parseInt(tmps);
	 tmps = (String)request.getAttribute("nowzhou");
     int zhou = Integer.parseInt(tmps);
     System.out.println("4!!!");
     System.out.println("zhou:"+zhou);
     System.out.println("name =" + t_name);
     /*
     ArrayList<event> list=new ArrayList<event>();
     list = database.showt_name(t_name);
     */
     ArrayList<event> list=(ArrayList<event>)request.getAttribute("list");
     String et_date;
     String et_time;
     String week []= new String [7];
     week[0] = "星期天";
     week[1] = "星期一";
     week[2] = "星期二";
     week[3] = "星期三";
     week[4] = "星期四";
     week[5] = "星期五";
     week[6] = "星期六";
     String tmpw [];
     student stu;
     System.out.println("5!!!");
    %>
    <div id="header" align="center">
欢迎回来<br>
</div>
<div id="sidebar" align="right">


<script language="JavaScript" for=window event=onload>
<!-- Begin
//  页面加载时，则执行以下代码
var dCurDate = new Date();
// 在日历列表中指定当前的月份
frmCalendarSample.tbSelMonth.options[dCurDate.getMonth()].selected = true;
//  在日历列表中指定当前的年份
for (i = 0; i < frmCalendarSample.tbSelYear.length; i++)
if (frmCalendarSample.tbSelYear.options[i].value == dCurDate.getFullYear())
frmCalendarSample.tbSelYear.options[i].selected = true;
//  End -->
</script>
<form name="frmCalendarSample" method="post" action="">
<input type="hidden" name="calSelectedDate" value="">
<table border="1">
<tr>
<td>
<select name="tbSelMonth" onchange='fUpdateCal(frmCalendarSample.tbSelYear.value, frmCalendarSample.tbSelMonth.value)'>
<option value="1">January</option>
<option value="2">February</option>
<option value="3">March</option>
<option value="4">April</option>
<option value="5">May</option>
<option value="6">June</option>
<option value="7">July</option>
<option value="8">August</option>
<option value="9">September</option>
<option value="10">October</option>
<option value="11">November</option>
<option value="12">December</option>
</select>
<select name="tbSelYear" onchange='fUpdateCal(frmCalendarSample.tbSelYear.value, frmCalendarSample.tbSelMonth.value)'>
<option value="2014">2014</option>
</select>
</td>
</tr>
<tr>
<td>
<script language="JavaScript">
var dCurDate = new Date();  //  构造当前Date对象
// 调用fDrawCal函数，在页面中显示当前日期的日历
fDrawCal(dCurDate.getFullYear(), dCurDate.getMonth()+1, 30, 30, "12px", "bold", 1);
</script>
</td>
</tr>
</table>
</form>












<form  name="form" method="post" action="t_deal">

<table>
        <tr>
        <td>
        <div>
                               时间:（请用24时制）
       </div>
        <table>
        <tr>
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
        </table>
        </tr>
        <tr>
        <td>
        <div>
地点：
        </div>
        <div>
        <input type="text" name="message2" style="width: 250px; ">
        </div>
        </tr>
        </table>
        <table>
            <tr>
            <td>
              	<input type="submit"  name="deal1"  value="添加空闲时间段" style="width: 100px; ">
      	    </td>
            </tr>
            </table>

</form>
</div>
<div id="content" align="left">
<form  name="form" method="post" action="t_deal">
    <table>
    <tr>
    <td>
    <input type="submit"  name="datedeal1"  value="往前翻一天" style="width: 100px; ">
    </td>
    <td>
    <input type="text" name="yue" style="width: 30px; " value="<%=String.valueOf(yue)%>" >
    </td>
    <td>
    月
    </td>
    <td>
    <input type="text" name="ri" style="width: 30px; " value="<%=String.valueOf(ri)%>" >
    </td>
    <td>
   日
    </td>
     <td>
    <%=week[zhou]%>
    </td>
    <td>
    <input type="submit"  name="datedeal2"  value="往后翻一天" style="width: 100px; ">
    </td>
    <td>
    <input type="submit"  name="datedeal3"  value="查询所填时间" style="width: 100px; ">
    </td>
    </tr>
    </table>
    <table width="600" border="1" align="left" height="">
    <%
      for ( int timetmp = 8; timetmp < 17; timetmp++)
      {
      %>
      
      <tr>
          <td align="center" style="width: 40px; "><%=String.valueOf(timetmp) + ":00~~"%></td>
      </tr>
      <%
  
      
      System.out.println("6!!!");
     Iterator<event> iter1=list.iterator(); 
     while(iter1.hasNext()){
    		event et=(event)iter1.next();
    		System.out.println("7!!!");
    		System.out.println("id = " + et.getid());
    		System.out.println("s_name = " + et.gets_name());
    		System.out.println("time = " + et.gettime());
    		System.out.println("didian = " + et.getdidian());
    		System.out.println("beizhu = " + et.getbeizhu());
    		et_time = et.gettime();
    		tmpw = et_time.split(" ");
    		if(Integer.parseInt(tmpw[0]) == timetmp)
    		{
    		   if(Integer.parseInt(tmpw[2]) > timetmp)timetmp = Integer.parseInt(tmpw[2]) - 1;
    		   System.out.println("8!!!");
    		   stu = database.querys_name(et.gets_name());
    		   if(et.gets_name() == null)
    		   {
    		   System.out.println("9!!!");
    		   %>
    		   <tr>
    		   
    		   <td>
    		   <div id="div1" style="background-color:yellow"
          onmouseover="this.style.backgroundColor='green'"
          onmouseout="this.style.backgroundColor='yellow'">
          <table>
          <tr>
          <td>
          
          
    		   <input type="checkbox" name="list" value= "<%=et.getid()%>">
    	  </td>
    		   <td>时间：</td>
    		   <td>
    		   <input type="text" name="xianshi1" style="width: 90px;" value="<%=tmpw[0]+":"+tmpw[1]+"-"+tmpw[2]+":"+tmpw[3]%>" >
    		   </td>
    		   <td>地点：</td>
    		   <td>
    		   <input type="text" name="xianshi2" style="width: 50px;" value="<%=et.getdidian()%>" >
    		   </td>
               <td>未被预约</td>
    		   </tr>
          </table>
    		   
    		   </div>
    		   </td>					    
    		   
    		   </tr>
    		   <%
    		   }
    		   else
    		   {
    		   System.out.println("10!!!");
    		   %>
    		   <tr>
    		   <td>
    		   <div id="div1" style="background-color:red"
          onmouseover="this.style.backgroundColor='green'"
          onmouseout="this.style.backgroundColor='red'">
          <table>
          <tr>
               <td>
    		   <input type="checkbox" name="list" value= "<%=et.getid()%>">
    		   </td>
    		   <td>时间：</td>
    		   <td>
    		   <input type="text" name="xianshi3" style="width: 90px;" value="<%=tmpw[0]+":"+tmpw[1]+"-"+tmpw[2]+":"+tmpw[3]%>" >
    		   </td>
    		   <td>地点：</td>
    		   <td>
    		   <input type="text" name="xianshi4" style="width: 50px;" value="<%=et.getdidian()%>" >
    		   </td>
    		   <td>学生：</td>
    		   <td>
    		   <input type="text" name="xianshi5" style="width: 50px;" value="<%=stu.gettruename()%>" >
    		   </td>
    		   <td>备注：</td>
    		   <td>
    		   <input type="text" name="xianshi6" style="width: 50px;" value="<%=et.getbeizhu()%>" >
    		   </td>
               <td>已被预约</td>
    		   </tr>
    		   
          </table>
    		   </div>
    		   </td>					    
    		   
    		   </tr>
    		   <%
    		   } 
    		}
    }
   } 
   %>
   <tr>
    		   <td>
      	        <input type="submit"  name="deal3"  value="删除所选时间段" style="width: 100px; ">
           	</td>
    		   </tr>
     </table>
     
    <%
    session.setAttribute("nowyue", String.valueOf(yue));
    session.setAttribute("nowri", String.valueOf(ri));
    session.setAttribute("nowzhou", String.valueOf(zhou));
    session.setAttribute("nowtch_name",t_name);
    %>
     
    </form>
</div>
<div id="footer" align="right">
<p><a href="index.jsp">重新登录</a>
 	</p>
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
this[I+1]=initArray.arguments[I];
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
