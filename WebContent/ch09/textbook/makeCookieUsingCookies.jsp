<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import = "util.Cookies" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	response.addCookie(Cookies.createCookie("name", "박미정"));
	response.addCookie(Cookies.createCookie("id", "madvirus", "/chap09", -1));
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>쿠키 사용 예</title>
</head>
<body>
<div class="container">
	Cookies를 사용하여 쿠키 생성
</div>
</body>
</html>