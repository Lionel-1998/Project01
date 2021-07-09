<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="com.jspweb.bean.Product, com.jspweb.service.ProductService, java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的购物车</title>
</head>
<body>
	<h3>您的购物车清单如下：</h3>
	<%
		List<Product> myProductList = (List<Product>) session.getAttribute("myProductList");
		if (myProductList == null) {
			out.println("您的购物车空空如也, 请先<a href='index.jsp'>选择商品</a>!");
			return;
		}
		Integer totalPrice = 0;
		for (Product p : myProductList) {
			totalPrice += p.getPrice();
	%>
	<p><%=p.getId()%>:<%=p.getName()%>(<%=p.getPrice()%>元)
	</p>
	<%
		}
	%>
	<p>
		商品总价：<%=totalPrice%>元
	</p>
	<p>
		<a href="index.jsp">再次购买</a>
	</p>
</body>
</html>