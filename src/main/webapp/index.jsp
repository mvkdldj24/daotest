<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
메인페이지


<html>
<head>
<meta charset="utf-8">
<title>Welcome</title>
</head>
<body>
	<c:url value="/files/main" var="aaa" />
	<a href="${aaa}">Click to enter</a>


	<c:url value="/admin/test" var="admin" />
	<ul>
		<li>
			<h5>로그인인 경우</h5> <a href="${admin}?ln=ok">로그인테스트</a>
		</li>
		<li>
			<h5>로그인이 아닌 경우</h5> <a href="${admin}?ln=no">로그인테스트</a>
		</li>
	</ul>

</body>
</html>