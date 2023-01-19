<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head><title>1-10까지의 합</title></head>
<body>

<!-- 자바의 실행코드 : 스크립트릿 -->
<%
	int sum = 0;
	for (int i = 1 ; i <= 10 ; i++) {
		sum = sum + i;
	}
%>

<!-- 표현식 -->
1 부터 10까지의 합은 <%= sum %> 입니다.
</body>
</html>
