<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">
    <img src="${pageContext.request.contextPath }/res/image/java-logo.png" height="30" alt="">
  </a>
 
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/main"><i class="fas fa-home"></i> Main <i class="fas fa-home"></i><span class="sr-only">(current)</span></a>
      </li>
     <c:if test="${empty sessionScope.userLogined }" >
      <li class="nav-item">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/signup"><i class="fas fa-user-plus"></i> 회원가입 </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/login"><i class="fas fa-sign-in-alt"></i> 로그인 </a>
      </li>
     </c:if>
     <c:if test="${not empty sessionScope.userLogined }" >
      <li class="nav-item">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/info"><i class="fas fa-info-circle"></i> 정보보기 </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/logout"><i class="fas fa-sign-out-alt"></i> 로그아웃 </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/board/write"><i class="fas fa-pencil-alt"></i> 글쓰기 </a>
      </li>
      </c:if>
      <li class="nav-item">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/board/list"><i class="fas fa-list"></i>글목록</a>
      </li>
      <c:if test="${not empty sessionScope.master }" >
      <li class="nav-item">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/list"><i class="fas fa-user-shield"></i> 회원목록 </a>
      </li>
      </c:if>
    </ul>
  </div>
</nav>






