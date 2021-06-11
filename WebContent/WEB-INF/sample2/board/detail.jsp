<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>


<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Mezzang's Board Detail</title>
</head>
<body>
<s2:navbar></s2:navbar>
<div class="container">

	<div class="row justify-content-center">
	<div class="col-8">
	
	<h1>${board.boardId }번 글 보기</h1>
	
	<form id="form1" action="${pageContext.request.contextPath }/sample2/board/modify" method="post">
	
		<div class="form-gruop">
			<label for="input1">제목</label>
			<input id="input1" class="form-control" type="text" name="title" value="${board.title }" readonly>	
		</div>
	
	
		<div class="form-gruop">
			<label for="textarea1">본문</label>
			<textarea rows="10" id="textarea1" class="form-control" name="body" readonly> ${board.body }</textarea>	
		</div>

		<div class="form-gruop">
			<label for="input2">글쓴이</label>
			<input id="input2" class="form-control" type="text" value="${board.memberName }" readonly>	
		</div>
	
		<div class="form-gruop">
			<label for="input3">작성시간</label>
			<input id="input3" class="form-control" type="text" value="${board.timeAgo }" readonly>	
		</div>

	<c:if test="${sessionScope.userLogined.id == board.memberId  }" >
		<script>
			$(document).ready(function() {	
				$("#button1").click(function(e) {
					e.preventDefault();
					$("#input1, #textarea1").removeAttr("readonly");
					$("#button1").attr("hidden", "hidden");
					$("#submit1, #submit2").removeAttr("hidden");
				});
				
				$("#submit2").click(function(e) {
					e.preventDefault();
					
					if (confirm("삭제 하시겠습니까?")) {
						var path = '${pageContext.request.contextPath }/sample2/board/remove';
						$("#form1").attr("action", path);
						$("#form1").submit();
					}
					
				});
			});	
		</script>
	
		<br>
		<input type="number" value="${board.boardId }" name="boardId" hidden >
		<button class="btn btn-danger" id="button1" type="button">수정</button>
		<button class="btn btn-warning" id="submit1" hidden>전송</button>
		<button class="btn btn-danger" id="submit2">삭제</button>

	</c:if>
	
	</form>	
	
	</div>
	</div>
	
	<s2:message />
</div>

<c:if test="${not empty sessionScope.userLogined }">
<div class="container mt-5">
<div class="row justify-content-center">
<div class="col-8">
	<form action="${pageContext.request.contextPath }/sample2/comment/add" method="post">
		<textarea name="comment"></textarea>
		<br>
		<input class= hidden name="memberId" value="${sessionScope.userLogined.id }" readonly>
		<br>
		<input hidden name="boardId" value="${board.boardId }" readonly>
		<br>
		<button class="btn btn-danger" type="submit"><i class="fas fa-pencil-alt"></i></i> 댓글 쓰기</button>
	</form>
</div>
</div>
</div>

</c:if>
<div class="container mt-5">
	<c:forEach items="${comments }" var="comment">
		<script>
			$(document).ready(function() {
				var $form = $('#' + 'comment${comment.id }Form');
				var $modifyButton = $('#' + 'comment${comment.id }Button1');
				var $deleteButton = $('#' + 'comment${comment.id }Button2');
				var $submitButton = $('#' + 'comment${comment.id }Button3');
				
				$modifyButton.click(function(e) {
					e.preventDefault();
					$form.find("textarea").removeAttr("readonly");
					$(this).attr("hidden", "hidden");
					$submitButton.removeAttr("hidden");
				});
				
				$deleteButton.click(function(e) {
					e.preventDefault();
					
					if (confirm("삭제 하시겠습니까?")) {
						$form.attr("action", "${pageContext.request.contextPath }/sample2/comment/remove");
						$form.submit();
					}
				});
			});
		</script>
		<div>
		 <div class="row justify-content-center">
		 <div class="col-8">
		 <div class="form-gruop">
			<form id="comment${comment.id }Form" 
			      action="${pageContext.request.contextPath }/sample2/comment/modify"
			      method="post">
			    <input name="commentId" value="${comment.id }" hidden />
			    <input name="boardId" value="${board.boardId }" hidden />
				<textarea name="comment" readonly>${comment.comment }</textarea>
				<span>${comment.memberName }</span>
				<span>${comment.timeAgo }</span>
				
				
				<c:if test="${sessionScope.userLogined.id == comment.memberId }">

					<button class="btn btn-danger" id="comment${comment.id }Button1">수정</button>
					<button class="btn btn-warning" id="comment${comment.id }Button3" hidden>전송</button>
					<button class="btn btn-danger" id="comment${comment.id }Button2">삭제</button>
				</c:if>
			</form>
		 </div>
		 </div>
		 </div>
		</div>
	</c:forEach>
</div>
</body>
</html>