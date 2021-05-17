<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="member" scope="request" class="ch08.MemberInfo" />
<%
	member.setId("taeby00");
	member.setName("박미정");
%>

<hr>

<jsp:setProperty name="member" property="id" value="taeby00" />
<jsp:setProperty name="member" property="name" value="박미정" />

<jsp:forward page="useObject.jsp" />
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	
</div>
</body>
</html>