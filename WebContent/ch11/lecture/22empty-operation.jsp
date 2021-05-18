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
<%
application.removeAttribute("attr1");
pageContext.setAttribute("pageAttr1", "");
pageContext.setAttribute("pateAttr2", new int[] {});
pageContext.setAttribute("pateAttr3", new ArrayList());
pageContext.setAttribute("pateAttr4", new HashMap());
%>
	<h1>empty 연산자</h1>
	<%-- boolean으로 리턴. null 또는 비어있으면 true --%>
	\${empty attr } null: ${empty attr1 } <br>
	\${empty pageAttr1 } 빈 스트링: ${empty pageAttr1 } <br>
	\${empty pageAttr2 } 길이가 0인 배열: ${empty pageAttr2 } <br>
	\${empty pageAttr3 } 길이가 0인 리스트: ${empty pageAttr3 } <br>
	\${empty pageAttr4 } 크기가 0인 리스트: ${empty pageAttr4 } <br>
	
	<hr>
	\${! empty attr } null: ${! empty attr1 } <br>
	\${! empty pageAttr1 } 빈 스트링: ${! empty pageAttr1 } <br>
	\${! empty pageAttr2 } 길이가 0인 배열: ${! empty pageAttr2 } <br>
	\${! empty pageAttr3 } 길이가 0인 리스트: ${! empty pageAttr3 } <br>
	\${! empty pageAttr4 } 크기가 0인 리스트: ${! empty pageAttr4 } <br>
	
	<hr>
	\${not empty attr } null: ${not empty attr1 } <br>
	\${not empty pageAttr1 } 빈 스트링: ${not empty pageAttr1 } <br>
	\${not empty pageAttr2 } 길이가 0인 배열: ${not empty pageAttr2 } <br>
	\${not empty pageAttr3 } 길이가 0인 리스트: ${not empty pageAttr3 } <br>
	\${not empty pageAttr4 } 크기가 0인 리스트: ${not empty pageAttr4 } <br>
	
	<hr>
	${pageScope.attr1 } <br>
	${requestScope.attr1 } <br>
	${sessionScope.attr1 } <br>
	${applicationScope.attr1 } <br>
	<%-- attr1 있는지 검사 --%>		
</div>
</body>
</html>