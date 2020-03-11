<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Products</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="container/_link-css.jsp"></jsp:include>
<link rel="stylesheet"
	href="https://storage.googleapis.com/code.getmdl.io/1.0.2/material.indigo-pink.min.css">
<jsp:include page="container/_scripts.jsp"></jsp:include>
</head>
<body>
	<div class="container">

		<%
			if (request.getAttribute("product") != null) {
				out.println("<p>" + request.getAttribute("product").toString() + "</p>");
			}
		%>
		<div class="mdl-grid">
			<div class="mdl-layout-spacer"></div>
			<h1>Товари</h1>
			<div class="mdl-layout-spacer"></div>
		</div>
		<div class="mdl-grid">
			<div class="mdl-layout-spacer"></div>
			<a href="${pageContext.request.contextPath}/admin/products/add"
				class="mdl-button mdl-js-button mdl-button--raised mdl-color--green">
				Додати </a>
			<div class="mdl-layout-spacer"></div>
		</div>

		<div class="mdl-grid">
			<div class="mdl-layout-spacer"></div>
			<table
				class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
				<tr>
					<th class="mdl-data-table__cell--non-numeric">image</th>
					<th>id</th>
					<th class="mdl-data-table__cell--non-numeric">name</th>
					<th class="mdl-data-table__cell--non-numeric">description</th>
					<th>price</th>
					<th class="mdl-data-table__cell--non-numeric">Category</th>
					<th>actions</th>
				</tr>
				<c:forEach items="${products}" var="product">
					<tr>
						<td><img src="${product.image}"
							onerror="this.onerror=null;this.src='https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png';"
							style="width: 50px"></td>
						<td>${product.id}</td>
						<td>${product.name}</td>
						<td>${product.description}</td>
						<td>${product.price}</td>
						<td>${product.category.name}</td>
						<td><a
							href="${pageContext.request.contextPath}/admin/products/edit/${product.id}"
							class="mdl-button mdl-js-button mdl-button--raised mdl-color--indigo">Редагувати</a>
							<a
							href="${pageContext.request.contextPath}/admin/products/delete/${product.id}"
							class="mdl-button mdl-js-button mdl-button--raised mdl-color--red">Видалити</a>
							<a
							href="${pageContext.request.contextPath}/cart/buy/${product.id}"
							class="mdl-button mdl-js-button mdl-button--raised mdl-color--cyan">Додати
								у корзину</a>
					</tr>
				</c:forEach>
			</table>
			<div class="mdl-layout-spacer"></div>
		</div>
	</div>
</body>
</html>