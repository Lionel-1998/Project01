<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>JSP WEB系统</title>
</head>
<body>
	<%!
		Integer accessCount = 0;
	%>
	<%
	
		String param1 = request.getParameter("name");
		String param2 = request.getParameter("sex");
		String birthday = request.getParameter("birthday");
	
		
		//request.getRequestDispatcher("info.jsp").forward(request,response);
	
		String sessionId = session.getId();
		request.setAttribute("info","abcdefg");
		session.setAttribute("sinfo","abcd");
		application.setAttribute("ainfo","appinfo");
		
		accessCount = (Integer)application.getAttribute("accessCount");
		accessCount = accessCount == null?1:accessCount+1;
		application.setAttribute("accessCount",accessCount);
	%>
	
	seesionId=<%=sessionId %>
	
	<%-- <form action="info.jsp" page="/info.jsp">
		<input type="text" name="num1"/>
		<input type="text" name="num2"/>
		<input type="submit" value="提交"/>
	</form>
	--%>

	<%-- <jsp:forward page="/info.jsp"></jsp:forward>  --%>
	<form action="" method="post">
	<input type="text" name="birthday"/>
	<input type="submit" value="提交"/>
	<a href="info.jsp">第二个页面</a>
	<a href="clearCount.jsp">清空访问量</a>
	</form>
	<p>这是一个JSP页面</p>
	姓名=<%=param1 %>
	性别=<%=param2 %>
	出生日期=<%=birthday %>
	网站访问量 = <%=accessCount %>
</body>
</html>