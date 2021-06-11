<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>


<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<s2:navbar></s2:navbar>
<div class="container">

	<div class="row justify-content-center">
	<div class="col-6">
	
	<h1>로그인</h1>
	<form method="post" action = "${pageContext.request.contextPath }/sample2/member/login">
		
		<div class="form-group">
			<label for="input1">ID</label>
			<input id="input1" class="form-control" type="text" name="id">
		</div>

		<div class="form-group">
			<label for="input2">Password</label>
			<input id="input2" class="form-control" type="password" name="password">
		</div>
		
		<button class="btn btn-danger" type="submit"><i class="fas fa-sign-in-alt"></i> LogIN</button>
		
	</form>
	</div>
	</div>
	
	<c:if test="${not empty message }">
		<s2:message></s2:message>
	</c:if>
</div>
</body>
</html>