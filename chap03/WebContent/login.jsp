<%@ page contentType="text/html; charset=utf-8" %>
<% // 스크립트릿 : 자바 실행문 기술
	String id = request.getParameter("memberId"); // 이거 url에 memberId=madvirus로 하면 응답 코드가 실행됨
	if (id != null && id.equals("madvirus")) {
		response.sendRedirect("/chap03/index.jsp");
	} else {
%>
<html>
<head><title>로그인에 실패</title></head>
<body>
잘못된 아이디입니다.
</body>
</html>
<%
	}
%>
