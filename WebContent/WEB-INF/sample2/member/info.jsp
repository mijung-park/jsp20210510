<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>


<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>My Information</title>
<script>
$(document).ready(function() {
	$("#button1").click(function() {
		$("#input2, #input3, #input4").removeAttr("readonly");
		$("#submit1").removeAttr("hidden");
	});
	
	$("#submit2").click(function(e) {
		e.preventDefault();
		console.log("submit2 clicked...");
		
		var con = confirm("탈퇴 하시겠습니까??")
		
		console.log(con);
		
		if(con) {
			$("#form2").submit();
		}
	});
});

</script>
</head>
<body>
<s2:navbar></s2:navbar>
<div class="container">
	<div class="row justify-content-center">
	<div class="col-8">
	<form id="form1" action="${pageContext.request.contextPath }/sample2/member/modify" method="post">
		
		<div class="form-gruop">
			<label for="input1">ID</label>
			<input id="input1" class="form-control" type="text" name="id" value="${member.id }" readonly>	
		</div>

		<div class="form-gruop">
			<label for="input2">Password</label>
			<input id="input2" class="form-control" type="password" name="password" value="${member.password }" readonly>	
		</div>

		<div class="form-gruop">
			<label for="input3">Name</label>
			<input id="input3" class="form-control" type="text" name="name" value="${member.name }" readonly>	
		</div>

		<div class="form-gruop">
			<label for="input4">Birth Day</label>
			<input id="input4" class="form-control" type="date" name="birth" value="${member.birth }" readonly>	
		</div>
		
		<button class="btn btn-danger" id="button1" type="button">수정</button>
		<input class="btn btn-warning"type="submit" id="submit1" value="전송" hidden>
	</form>
	</div>
	</div>
	
	<c:if test="${not empty message }">
		<s2:message></s2:message>
	</c:if>
</div>

<div class="container mt-3">
<div class="row justify-content-center">
<div class="col-8">

	<div class="form-gruop">
	<input class="form-control" type="text" value=" 작성 게시물 : ${member.numberOfBoard } 개" readonly>
	<input class="form-control" type="text" value=" 작성 댓글 : ${member.numberOfComment } 개" readonly>		
	</div>

</div>
</div>
</div>

<div class="container mt-3">
<div class="row justify-content-center">
<div class="col-8">
	<form id="form2" action="${pageContext.request.contextPath }/sample2/member/remove" method="post">
		<input class="btn btn-danger" id="submit2" type="submit" value="탈퇴">
	</form>
</div>
</div>
</div>
</body>
</html>