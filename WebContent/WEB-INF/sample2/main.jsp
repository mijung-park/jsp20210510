<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Mezzang's Board House</title>
</head>
<body>
<s2:navbar />

<div class="container">

<div class="jumbotron">
  <h1 class="display-4">Welcome to Mezzang's Board 😍😍</h1>
  <p class="lead">박미정의 기본 Servlet/JSP로 만든 회원, 게시판 어플리케이션입니다.</p>
  <hr class="my-4">
  <p>프로그래밍을 처음 배워서 만들어 본 게시판 입니다. 회원가입부터 시작해보세요!</p>
  <a class="btn btn-danger btn-lg" href="<%= request.getContextPath() %>/sample2/member/signup" role="button"><i class="fas fa-user-plus"></i> JOIN IN</a>
</div>

</div>
</body>
</html>