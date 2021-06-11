<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>


<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Mezzang's Board Write</title>
</head>
<s2:navbar></s2:navbar>
<body>
<div class="container">

	<div class="row justify-content-center">
	<div class="col-8">

	<h1>글 작성</h1>
	<form action="${pageContext.request.contextPath }/sample2/board/write " method="post">
		
		<div class="form-gruop">
			<label for="input1">제목</label>
			<input id="input1" class="form-control" type="text" name="title">	
		</div>
		
		
		<div class="form-gruop">
			<label for="textarea1">본문</label>
			<textarea rows="10" id="textarea1" class="form-control" name="body"></textarea>
			
		</div>
		
			<button class="btn btn-danger" type="submit"><i class="fas fa-pencil-alt"></i></i> Submit</button>

	</form>
	</div>
	</div>
</div>
</body>
</html>