<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLEncoder"%>
<!-- 표준 api  -->
<%
Cookie cookie = new Cookie("name", URLEncoder.encode("최범균", "utf-8")); // '최범균' 문자 인코딩 할게
// 	javax : 빌드패스에서 jre는 javax로 시작하는 패키지가 음슴
response.addCookie(cookie); // 브라우저에 전달
// 그럼 최범균이 인코딩된 문자로 나옴
%>
<html>
<head>
<title>쿠키생성</title>
</head>
<body>

	<%=cookie.getName()%> 쿠키의 값 = "<%=cookie.getValue()%>"

</body>
</html>
