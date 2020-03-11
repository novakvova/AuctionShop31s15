<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" session="true"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<jsp:include page="container/_link-css.jsp"></jsp:include>
<jsp:include page="container/_scripts.jsp"></jsp:include>
<style>
.mdl-button--file input {
	cursor: pointer;
	height: 100%;
	right: 0;
	opacity: 0;
	position: absolute;
	top: 0;
	width: 300px;
	z-index: 4;
}

.mdl-textfield--file  .mdl-textfield__input {
	box-sizing: border-box;
	width: calc(100% - 32px);
}

.mdl-button--file {
	right: 0;
}
</style>
</head>

<body>
	<div class="mdl-grid">
		<div class="mdl-layout-spacer"></div>
		<h1>Додати товар</h1>
		<div class="mdl-layout-spacer"></div>
	</div>
	<div class="mdl-grid">
		<div class="mdl-layout-spacer"></div>
		<img id="prev" src="${image}"
			onerror="this.onerror=null;this.src='https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png';"
			width="300px" />
		<div class="mdl-cell mdl-cell---col">
			<form:form method="POST" enctype="multipart/form-data"
				modelAttribute="product">
				<div class="mdl-textfield mdl-js-textfield">
					<form:label class="mdl-textfield__label" path="name">Name</form:label>
					<form:input class="mdl-textfield__input" path="name" />
				</div>
				<div class="mdl-textfield mdl-js-textfield">
					<form:label class="mdl-textfield__label" path="price">Price</form:label>
					<form:input class="mdl-textfield__input" path="price" />
				</div>
				<div class="mdl-textfield mdl-js-textfield">
					<form:label class="mdl-textfield__label" path="description">Description</form:label>
					<form:input class="mdl-textfield__input" path="description" />
				</div>
				<div class="mdl-textfield mdl-js-textfield mdl-textfield--file">
					<form:input class="mdl-textfield__input" path="image"
						placeholder="File" type="text" id="uploadFile" />
					<div
						class="mdl-button mdl-button--primary mdl-button--icon mdl-button--file">
						<i class="material-icons">attach_file</i>
						<form:input path="image" name="image" type="file" id="uploadBtn" />
					</div>
				</div>
				<div class="mdl-textfield mdl-js-textfield">
					<select name="category" class="mdl-textfield__input">
						<c:forEach items="${categories}" var="category">
							<option value="${category.id}">${category.name}</option>
						</c:forEach>
					</select>
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
	<script>
		document.getElementById("uploadBtn").onchange = function() {
			document.getElementById("uploadFile").value = this.files[0].name;
			document.getElementById('prev').src = window.URL
					.createObjectURL(this.files[0])
		};
	</script>
</body>
</html>