<%@ page contentType = "text/html; charset=utf-8" %>
<%
	session.invalidate();
	response.sendRedirect("../member/loginform.jsp");
%>
<html>
<head><title>로그아웃</title></head>
<body>

로그아웃하였습니다.

</body>
</html>
