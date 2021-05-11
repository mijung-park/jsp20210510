<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<form>
			<input type="checkbox" name="fruit" value="100"> 사과 <br>
			<input type="checkbox" name="fruit" value="150"> 수박 <br>
			<input type="checkbox" name="fruit" value="300"> 딸기 <br>
			<input type="checkbox" name="fruit" value="200"> 키위 <br>
			<input type="checkbox" name="fruit" value="500"> 체리 <br>
			<input type="checkbox" name="fruit" value="700"> 망고 <br>
			<input type="submit" value="합계">		
		</form>
	</div>
	
	<hr>
	<div class="container">
		합계 :
		<%
				String[] sum = request.getParameterValues("fruit");
				int sums = 0;
				if (sum != null && sum.length > 0) {
					for (String s : sum) {	
						sums += Integer.valueOf(s);
						
					}
				}
				out.print(sums);
		%>
		
	</div>
</body>
</html>