<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete product</title>
<jsp:include page="container/_link-css.jsp"></jsp:include>
<jsp:include page="container/_scripts.jsp"></jsp:include>
</head>
<body>

	<style>
.demo-card-wide.mdl-card {
	width: 512px;
}

.demo-card-wide>.mdl-card__title {
	color: #fff;
	height: 300px;
	background: url('../../${productDelete.image}') center/cover;
}

.demo-card-wide>.mdl-card__menu {
	color: #fff;
}
</style>

	<div class="mdl-grid">
		<div class="mdl-layout-spacer"></div>
		<h1>Видалити товар</h1>
		<div class="mdl-layout-spacer"></div>
	</div>

	<%-- 	<form:form name="form" --%>
	<%-- 		action="${pageContext.request.contextPath}/admin/products/delete/${productDelete.id}" --%>
	<%-- 		method="post" modelAttribute="productDelete"> --%>
	<!-- 		<div class="card" style="width: 18rem;"> -->
	<!-- 			<img class="card-img-top" name="image" -->
	<%-- 				src="../../${productDelete.image}" alt="Card image cap"> --%>
	<!-- 			<div class="card-body"> -->
	<%-- 				<h5 class="card-title" name="name">${productDelete.name}</h5> --%>
	<%-- 				<p class="card-text" name="description">${productDelete.description}</p> --%>
	<%-- 				<p class="card-text" name="price">${productDelete.price}</p> --%>
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 		<button type="submit" class="btn btn-primary">Delete</button> -->
	<%-- 	</form:form> --%>
	<div class="mdl-grid">
		<div class="mdl-layout-spacer"></div>
		<form:form name="form"
			action="${pageContext.request.contextPath}/admin/products/delete/${productDelete.id}"
			method="post" modelAttribute="productDelete">
			<div class="demo-card-wide mdl-card mdl-shadow--2dp">
				<div class="mdl-card__title">
					<h2 class="mdl-card__title-text">${productDelete.name}</h2>
				</div>
				<div class="mdl-card__supporting-text">${productDelete.description}</div>
				<div class="mdl-card__supporting-text">${productDelete.price}</div>
				<div class="mdl-card__actions mdl-card--border">
					<button type="submit"
						class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect ">Delete</button>
				</div>
				<div class="mdl-card__menu">
					<button
						class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect ">
						<i class="material-icons">share</i>
					</button>
				</div>
			</div>
			</form:form>
			<div class="mdl-layout-spacer"></div>
	</div>
	
</body>
</html>