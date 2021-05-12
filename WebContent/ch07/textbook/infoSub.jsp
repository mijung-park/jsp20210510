<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<%
String type = request.getParameter("type");
if(type == null) {
	return;
}
%>
<br>
<table class="table table-hover table-bordered" width="100%" border="1" cellpadding="0" cellspacing="0">
<tr class="table-info">
	<td>타입</td>
	<td><b><%= type %></b></td>
</tr>
<tr class ="table-danger">
	<td>특징</td>
	<td><% if (type.equals("A")) {%>
		강한 내구성.
		<% } else if (type.equals("B")) {%>
		뛰어난 대처능력.
		<% } %>
	</td>
</tr>
</table>


