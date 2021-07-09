<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>这是第二个页面</title>
</head>
<body>
	<%!
		Integer accessCount = 0;
	%>
	
	<%
		String info = (String)request.getAttribute("info");
		String sinfo = (String)session.getAttribute("sinfo");
		String ainfo = (String)application.getAttribute("ainfo");
		//Integer num1=Integer.parseInt(request.getParameter("num1"));
		//Integer num2=Integer.parseInt(request.getParameter("num2"));
		//Integer sum=num1+num2;
		
		accessCount = (Integer)application.getAttribute("accessCount");
		accessCount = accessCount == null?1:accessCount+1;
		application.setAttribute("accessCount",accessCount);
	%>
	<p>这是第二个页面</p>
	<a href="index.jsp">第一个页面</a>
	info:<%=info %>
	sinfo:<%=sinfo %>
	ainfo:<%=ainfo %>
	网站访问量 = <%=accessCount %>
	<%-- sum:<%=sum %> --%>

</body>
</html>