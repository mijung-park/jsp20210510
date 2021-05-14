<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
Cookie cookie = new Cookie("oneh", "1time");
cookie.setMaxAge(60 * 60); // 60분
response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>쿠키유효시간 설정</title>
</head>
<body>
<div class="container">
	유효시간이 1시간인 oneh 쿠키 설정
</div>
</body>
</html>