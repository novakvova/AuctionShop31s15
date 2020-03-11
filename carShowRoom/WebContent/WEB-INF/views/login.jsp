<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="container/_link-css.jsp"></jsp:include>
<jsp:include page="container/_scripts.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Custom login</title>
<style type="text/css">
.error {
	color: #ff0000;
	font-weight: bold;
}

.msg {
	color: #008000;
	font-weight: bold;
}
</style>
</head>
<body>
	<div class="mdl-grid">
		<div class="mdl-layout-spacer"></div>
		<h1>Login</h1>
		<div class="mdl-layout-spacer"></div>
	</div>

	<!-- invalid credentials error msg -->
	<c:if test="${not empty error}">
		<div class="error">${error}</div>
	</c:if>

	<!-- logged out msg -->
	<c:if test="${not empty msg}">
		<div class="msg">${msg}</div>
	</c:if>
	<div class="mdl-grid">
		<div class="mdl-layout-spacer"></div>
		<div class="mdl-cell mdl-cell--3-col">
			<!-- custom login form -->
			<div class="mdl-card__title mdl-color--primary mdl-color-text--white">
				<h2 class="mdl-card__title-text">ELECTION</h2>
			</div>
			<div class="mdl-card__supporting-text">
				<form name="loginform" action="<c:url value='/login'/>"
					method="POST">
					<div class="mdl-textfield mdl-js-textfield">
						<input class="mdl-textfield__input" name="username" type="text"
							id="username"> <label class="mdl-textfield__label"
							for="username">Email:</label>
					</div>
					<div class="mdl-textfield mdl-js-textfield ">
						<label class="mdl-textfield__label" path="password">Password</label>
						<input class="mdl-textfield__input" type="password" name="password"
							path="password" />
					</div>
					<div class="mdl-grid">
						<div class="mdl-layout-spacer"></div>
						<input
							class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored"
							type="submit" value="LOG IN" />
						<div class="mdl-layout-spacer"></div>
					</div>

				</form>
			</div>
		</div>
		<div class="mdl-layout-spacer"></div>
	</div>

</body>
</html>