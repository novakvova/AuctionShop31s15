<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description"
	content="Introducing Lollipop, a sweet new take on Android.">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
<title>Auction</title>

<!-- Page styles -->

<jsp:include page="/WEB-INF/views/container/_link-css.jsp"></jsp:include>


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
	<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">

		<div
			class="android-header mdl-layout__header mdl-layout__header--waterfall">
			<div class="mdl-layout__header-row">
				<span class="android-title mdl-layout-title"> <img
					class="android-logo-image" src="resources/images/Election.png">
				</span>
				<!-- Add spacer, to align navigation to the right in desktop -->
				<div class="android-header-spacer mdl-layout-spacer"></div>
				<div
					class="android-search-box mdl-textfield mdl-js-textfield mdl-textfield--expandable mdl-textfield--floating-label mdl-textfield--align-right mdl-textfield--full-width">
					<label class="mdl-button mdl-js-button mdl-button--icon"
						for="search-field"> <i class="material-icons">search</i>
					</label>
					<div class="mdl-textfield__expandable-holder">
						<input class="mdl-textfield__input" type="text" id="search-field">
					</div>
				</div>
				<!-- Navigation -->
				<div class="android-navigation-container">
					<nav class="android-navigation mdl-navigation">
						<a class="mdl-navigation__link mdl-typography--text-uppercase"
							href="${pageContext.request.contextPath}/admin/products">Продукти</a>
						<a class="mdl-navigation__link mdl-typography--text-uppercase"
							href="${pageContext.request.contextPath}/login">Вхід</a> <a
							class="mdl-navigation__link mdl-typography--text-uppercase"
							href="${pageContext.request.contextPath}/user/registration">Реєстрація</a> <a
							class="mdl-navigation__link mdl-typography--text-uppercase"
							href="">TV</a> <a
							class="mdl-navigation__link mdl-typography--text-uppercase"
							href="">Laptop</a> <a
							class="mdl-navigation__link mdl-typography--text-uppercase"
							href="${pageContext.request.contextPath}/cart/index">Корзина</a>
					</nav>
				</div>
				<span class="android-mobile-title mdl-layout-title"> <img
					class="android-logo-image" src="resources/images/Election.png">
				</span>
			</div>
		</div>

		<div class="android-drawer mdl-layout__drawer">
			<span class="mdl-layout-title"> <img
				class="android-logo-image" src="resources/images/whiteElection.png">
			</span>
			<nav class="mdl-navigation">
				<a class="mdl-navigation__link" href="">Smart Watch</a> <a
					class="mdl-navigation__link" href="">Phones</a> <a
					class="mdl-navigation__link" href="">Tablets</a> <a
					class="mdl-navigation__link" href="">TV</a> <a
					class="mdl-navigation__link" href="">Laptop</a> <a
					class="mdl-navigation__link" href="">Basket (0)</a>
			</nav>
		</div>
	</div>
	<article>
		<div class="content-grid mdl-grid">
			<div class="main_photo">
				<img class="img_main" src="resources/images/laptop.png"
					alt="main image">
			</div>
			<div class="info_main">
				<h2>Classic Peace Lily</h2>
				<h3>$18</h3>
				<button
					class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">Add
					to basket</button>
				<button
					class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">Watchlist</button>
				<hr>
				<div class="description">
					<p>The purposes of bonsai are primarily contemplation for the
						viewer, and the pleasant exercise of effort and ingenuity for the
						grower.</p>
					<p>By contrast with other plant cultivation practices, bonsai
						is not intended for production of food or for medicine. Instead,
						bonsai practice focuses on long-term cultivation and shaping of
						one or more small trees growing in a container.</p>
				</div>
			</div>
		</div>
	</article>



	<footer class="android-footer mdl-mega-footer">
		<div class="mdl-mega-footer--top-section">
			<div class="mdl-mega-footer--right-section">
				<a class="mdl-typography--font-light" href="#top"> Back to Top <i
					class="material-icons">expand_less</i>
				</a>
			</div>
		</div>

		<div class="mdl-mega-footer--middle-section"
			style="text-align: center">
			<p class="mdl-typography--font-light">Satellite imagery: © 2020
				Astrium, DigitalGlobe</p>
			<p class="mdl-typography--font-light">Some features and devices
				may not be available in all areas</p>
		</div>
		<img alt="" src="resources/images/1533415070161298164.jpg">

	</footer>
	<script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
</body>
</html>
