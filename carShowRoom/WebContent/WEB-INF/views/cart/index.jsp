<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart Page</title>
<jsp:include page="../container/_link-css.jsp"></jsp:include>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/basketStyle.css">

<style>
#view-source {
	position: fixed;
	display: block;
	right: 0;
	bottom: 0;
	margin-right: 40px;
	margin-bottom: 40px;
	z-index: 900;
}
</style>
</head>
<body>
	<jsp:include page="../container/_header.jsp"></jsp:include>
	<div class="content-grid mdl-grid">
		<div
			class="mdl-cell mdl-cell--6-col mdl-cell--4-col-tablet mdl-cell--4-col-phone"
			style="margin-top: 100px">
			<table
				class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
				<thead>
					<tr>
						<th class="mdl-data-table__cell--non-numeric">Image</th>
						<th>Name</th>
						<th>Price</th>
						<th>Quantity</th>
						<th>Sub Total</th>
						<th>Option</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${sessionScope.cart }">
						<c:set var="total"
							value="${total + item.product.price * item.quantity }"></c:set>
						<tr>
							<td><img class="mdl-data-table__cell--non-numeric"
								src="${item.product.image}" width="50"></td>
							<td>${item.product.name }</td>
							<td>$${item.product.price }</td>
							<td>${item.quantity }</td>
							<td>$${item.product.price * item.quantity }</td>
							<td align="center"><a
								href="${pageContext.request.contextPath }/cart/remove/${item.product.id}"
								onclick="return confirm('Are you sure?')">Remove</a></td>
						</tr>
					</c:forEach>
					<tr>
						<td><a
							href="${pageContext.request.contextPath }/admin/products">Back</a></td>
						<td colspan="3" align="right">Sum</td>
						<td>$${total }</td>
					</tr>
				</tbody>
			</table>

		</div>
		</div>
		<div class="content-grid mdl-grid">
	<div
			class="mdl-cell mdl-cell--6-col mdl-cell--4-col-tablet mdl-cell--4-col-phone"
			style="margin-top: 100px">
			<div
				class="mdl-cell mdl-cell--12-col mdl-cell--4-col-tablet mdl-cell--4-col-phone">
				<form:form action="#" modelAttribute="user">
					<div
						class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
						<form:input path="name" class="mdl-textfield__input" type="Ім'я" id="name-client"/>
						<label class="mdl-textfield__label" for="name-client">Ім'я</label>
					</div>
					<div
						class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
						<form:input path="surname" class="mdl-textfield__input" type="Прізвище"
							id="surname-client"/> <label class="mdl-textfield__label"
							for="name-client">Прізвище</label>
					</div>
					<div
						class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
						<form:input path="phone" class="mdl-textfield__input" type="Номер телефону"
							id="phone-client"/> <label class="mdl-textfield__label"
							for="name-client">Номер телефону</label>
					</div>
					<div
						class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
						<form:input path="delivery" class="mdl-textfield__input" type="Спосіб доставки"
							id="delivety-method"/> <label class="mdl-textfield__label"
							for="delivety-method">Спосіб доставки</label>
					</div>
					<div
						class="mdl-cell mdl-cell--12-col mdl-cell--4-col-tablet mdl-cell--4-col-phone">
						<button
							class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
							Оформити</button>
					</div>
				</form:form>
			</div>
		</div>
		</div>
	<jsp:include page="../container/_scripts.jsp"></jsp:include>
</body>
</html>