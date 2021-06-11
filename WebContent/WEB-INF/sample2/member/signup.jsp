<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Mezzang's Board SignUp</title>
<script>
var url = "${pageContext.request.contextPath}" + "/sample2/member/checkdup";

$(document).ready(function() {
	$("#button1").click(function() {
		var id = $("#input1").val();
		
		$.post(url, {id: id}, function(data) {
			if (data == 'ok') {
				// 가입 가능 메세지
				// console.log("ok");
				$("#span1").text("사용가능한 ID 입니다.");
			} else {
				// 가입 불가능 메세지
				// console.log("not ok");
				$("#span1").text("이미 사용중인 ID 입니다.");
			}
		});
	});
});
</script>

</head>
<body>
<s2:navbar></s2:navbar>
<div class="container">

	<div class="row justify-content-center">
	<div class="col-4">
	
	<form action="${pageContext.request.contextPath }/sample2/member/signup" method="post">
		<h1>회원 가입</h1>
		
		<div class="form-group">
			<label for="input1">ID</label>
			<div class="input-group mb-3">
			<input id="input1" class ="form-control" name="id" type="text">
 		   	 <div class="input-group-append">
           		 <button class="btn btn-outline-secondary" type="button" id="button1">중복확인</button>
           	 </div>
            </div>
			<span class="form-text text-muted" id ="span1"></span>	
		</div>

		<div class="form-group">
			<label for="input2">Password</label>
			<input id="input2" name="password" type="password" class="form-control">
		</div>
			
		<div class="form-group">
			<label for="input3">Name</label>
			<input id="input3" name="name" type="text" class="form-control">
		</div>
		
		<div class="form-group">
			<label for="input4">Birth Day</label>
			<input id="input4" name="birth" type="date" class="form-control">
		</div>
		
		<button class="btn btn-danger" type="submit"><i class="fas fa-file-signature"></i> Submit</button>
		
		
	</form>
	</div>
	</div>
	
	<c:if test="${not empty message }">
	<s2:message></s2:message>
	</c:if>
</div>
</body>
</html>








