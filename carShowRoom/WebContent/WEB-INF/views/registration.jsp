<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<jsp:include page="container/_link-css.jsp"></jsp:include>
<jsp:include page="container/_scripts.jsp"></jsp:include>
<body>
	<div class="mdl-grid">
		<div class="mdl-layout-spacer"></div>
		<h1>Registration</h1>
		<div class="mdl-layout-spacer"></div>
	</div>
	<div class="mdl-grid">
		<div class="mdl-layout-spacer"></div>
		<div class="mdl-cell mdl-cell--6-col">
			<div class="mdl-card__title mdl-color--primary mdl-color-text--white">
				<h2 class="mdl-card__title-text">ELECTION</h2>
			</div>
			<form:form method="POST" enctype="utf8" modelAttribute="user">
				<div class="mdl-textfield mdl-js-textfield">
					<input class="mdl-textfield__input" name="username" type="text"
						id="username"> <label class="mdl-textfield__label"
						for="username">Username</label>
				</div>
				<div class="mdl-textfield mdl-js-textfield ">
					<form:label class="mdl-textfield__label" path="password">Password</form:label>
					<form:input class="mdl-textfield__input" type="password"
						path="password" />
				</div>
				<div class="mdl-textfield mdl-js-textfield ">
					<form:label class="mdl-textfield__label" path="role">Role</form:label>
					<form:input class="mdl-textfield__input" path="role" />
				</div>
				<div class="mdl-textfield mdl-js-textfield">
					<form:label class="mdl-textfield__label" path="name">Name</form:label>
					<form:input class="mdl-textfield__input" path="name" />
				</div>
				<div class="mdl-textfield mdl-js-textfield">
					<form:label class="mdl-textfield__label" path="surname">Surname</form:label>
					<form:input class="mdl-textfield__input" path="surname" />
				</div>
				<div class="mdl-textfield mdl-js-textfield ">
					<form:label class="mdl-textfield__label" path="delivery">Delivery</form:label>
					<form:input class="mdl-textfield__input" path="delivery" />
				</div>
				<div class="mdl-textfield mdl-js-textfield ">
					<form:label class="mdl-textfield__label" path="phone">Phone</form:label>
					<form:input class="mdl-textfield__input" path="phone" />
				</div>
				<div class="mdl-grid">
					<div class="mdl-layout-spacer"></div>
					<input
						class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored"
						type="submit" value="Submit" />
					<div class="mdl-layout-spacer"></div>
				</div>

			</form:form>

		</div>
		<div class="mdl-layout-spacer"></div>
	</div>


</body>
</html>