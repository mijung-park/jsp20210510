<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	session.setAttribute("MEMBERID", "madvirus");
	session.setAttribute("NAME", "박미정");
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>세션 정보 저장</title>
</head>
<body>
<div class="container">
	<h1>세션에 정보를 저장하였습니다.</h1>
	
</div>
</body>
</html>