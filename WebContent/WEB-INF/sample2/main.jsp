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
  <h1 class="display-4">Welcome to Mezzang's Board ππ</h1>
  <p class="lead">λ°λ―Έμ μ κΈ°λ³Έ Servlet/JSPλ‘ λ§λ  νμ, κ²μν μ΄νλ¦¬μΌμ΄μμλλ€.</p>
  <hr class="my-4">
  <p>νλ‘κ·Έλλ°μ μ²μ λ°°μμ λ§λ€μ΄ λ³Έ κ²μν μλλ€. νμκ°μλΆν° μμν΄λ³΄μΈμ!</p>
  <a class="btn btn-danger btn-lg" href="<%= request.getContextPath() %>/sample2/member/signup" role="button"><i class="fas fa-user-plus"></i> JOIN IN</a>
</div>

</div>
</body>
</html>