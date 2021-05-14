<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<h1> page2 jsp</h1>

<h3>page attr : <%= pageContext.getAttribute("page-attr3") %></h3>
<h3><%= request.getAttribute("req-attr3") %></h3>