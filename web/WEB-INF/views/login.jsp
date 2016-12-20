<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
	<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	<script src="<c:url value="/resources/js/npm.js" />"></script>
</head>

<body>

	<c:if test="${not empty error}">
		${error}
	</c:if>
	<div class="form">
		<form class="form-horizontal" role="form" method="POST" name='form_login' action="j_spring_security_check" >
			<div class="form-group">
				<div class="form-group">
					<label class="col-sm-2 control-label">Логин</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" placeholder="Логин" name="user_login">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Пароль</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" placeholder="Пароль" name="password_login">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button name="submit" type="submit" class="btn btn-default btn-sm">Войти</button>
					</div>
				</div>
		</form>
	</div>



</body>
</html>