<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>redirect 2</h1>
	<%= request.getAttribute("data") %>
</div>
</body>
</html>