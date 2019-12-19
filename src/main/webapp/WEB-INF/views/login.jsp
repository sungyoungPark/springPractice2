<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>로그인</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-/Y6pD6F/W2HJNA6t+vs 1U6fwYXjCFtcEPHONJOLYAFsXTsi BbfaDizAleOsN6M"
	crossorigin="anonymous" />
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<form class="form-sianin" method="post"
			action="<c:url value = "/j_spring_security_check"/>">


			<%--에러 메세지 출력을 위함 --%>
			<c:if test="${not empty logoutMsg}">
				<div style="color: #0000ff">
					<h4>${logoutMsg}</h4>
				</div>
			</c:if>

			<%--에러 메세지 출력을 위함 --%>
			<c:if test="${not empty errorMsg}">
				<div style="color: #ff0000">
					<h4>${errorMsg}</h4>
				</div>
			</c:if>

			<h2 class="form-signin-heading">계정을 입력해주세요</h2>
			<p>
				<label for="username" class="sr-only">아이디</label> <input
					type="text" id="username" name='j_username' class="form-control"
					placeholder="Username" required autofocus>
			</p>
			<p>
				<label for="password" class="sr-only">비밀번호</label> <input
					type="password" id="password" name='j_password' class="form-control"
					placeholder="Password" required>
			</p>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
			<button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
		</form>
	</div>
</body>
</html>