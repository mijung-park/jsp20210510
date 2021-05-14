<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import = "java.net.URLDecoder" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>쿠키 목록</title>
</head>
<body>
<div class="container">
쿠키목록<br>
<%
	Cookie[] cookie = request.getCookies();
	if(cookie != null && cookie.length > 0) {
		for(int i = 0; i < cookie.length; i++) {
%>
	<%= cookie[i].getName() %> =
	<%= URLDecoder.decode(cookie[i].getValue(), "utf-8") %> <br>
<%
		}
	} else {
%>
쿠키가 존재하지 않습니다.
<%	
	}
%>
</div>
</body>
</html>