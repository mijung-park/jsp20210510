<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page session="false" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
HttpSession session = request.getSession();
session.setAttribute("a", "b");
%>

<!--  
session을 false로 설정했기때문에 session을 생성할 수 없음.
이 경우 request로 세션을 얻어와 사용할 수 있음.
-->
 

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