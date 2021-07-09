<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="com.jspweb.bean.Product, com.jspweb.service.ProductService, java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品选择</title>
</head>
<body>
	<h3>请选择要购买的商品:</h3>
	<form action="save.jsp" method="post">
		<ul>
			<%
				session.setAttribute("productSel", true);
				List<Product> productList = (List<Product>) application.getAttribute("productList");
				if (productList == null) {
					ProductService service = new ProductService();
					productList = service.getAllProductList();
					application.setAttribute("productList", productList);
				}

				List<Product> myProductList = (List<Product>) session.getAttribute("myProductList");

				for (Product product : productList) {
			%>
			<li><input type="checkbox" name="product"
				value="<%=product.getId()%>" /> <%=product.getName()%>(<%=product.getPrice()%>元)
			</li>
			<%
				}
			%>
		</ul>
		<button type="submit">提交</button>
	</form>
</body>
</html>