<%@page language="java" pageEncoding="utf-8" contentType="text/html;charset=utf-8
" %>
<%@page import="java.util.Date" %>
<!DOCTYPE html>
<html>
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>这是一个tomcat文件</title>
 </head>
 <body>
	<%for(int i=0;i<10;i++){%>
	<div>i的值为<%out.println(i);%></div>
	<%}%>

 <%
 	int count=0;
	Date today = new Date();
	String baidu="http://www.baidu.com?data="+today;
 %>
 
  <a href="<%=baidu %>" target="_blank">打开百度</a>

  <div>现在是：<%=today%></div>

  <div>这是一个JSP文件</div>

  <% count++; %>
  <div>这是本网页第<%=count%>次访问</div>

  <%-- 这是一段JSP注释--%>
 </body>
</html>
