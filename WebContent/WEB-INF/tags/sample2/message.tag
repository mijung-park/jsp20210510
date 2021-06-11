<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:if test="${not empty message }">
	<div class="row justify-content-center">
	<div class="col-8">
	<div class="alert alert-success">
		${message }
	</div>
	</div>
	</div>
	
	<c:remove var="message" />
</c:if>