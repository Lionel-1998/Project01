<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="com.jspweb.bean.Product, com.jspweb.service.ProductService, java.util.*"%>
<%
	String[] products = request.getParameterValues("product");
	if (session.getAttribute("productSel") == null || products == null) {
		out.println("请先访问<a href='index.jsp'>商品选择</a>页面!");
		return;
	}

	List<Product> myProductList = new ArrayList<Product>();
	List<Product> productList = (List<Product>) application.getAttribute("productList");
	for (String pid : products) {
		//根据pid查找Product
		for (Product p : productList) {
			String id = p.getId();
			if (id.equals(pid)) {
				myProductList.add(p);
				break;
			}
		}
	}
	session.setAttribute("myProductList", myProductList);
	//重定向到显示页面
	response.sendRedirect("myProduct.jsp");
	//将来可能把myProductList存入到数据库里
%>