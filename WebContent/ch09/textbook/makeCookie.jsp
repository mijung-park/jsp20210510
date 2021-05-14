<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import = "java.net.URLEncoder" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	Cookie cookie = new Cookie("name", URLEncoder.encode("박미정", "utf-8"));
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>쿠키 생성</title>
</head>
<body>
<div class="container">
<%= cookie.getName() %> 쿠키의 값 = "<%= cookie.getValue() %>"
</div>
</body>
</html>