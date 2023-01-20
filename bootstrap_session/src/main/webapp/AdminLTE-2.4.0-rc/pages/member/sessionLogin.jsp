<%@ page contentType = "text/html; charset=utf-8" %>
<%
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	if (email.equals(password)) {
		session.setAttribute("MEMBERID", email); //자동형변환 : object <- String 이
// 		session.setAttribute("abc", "소연");
		session.setMaxInactiveInterval(60);
		response.sendRedirect("../main/index.jsp"); %>
<html>
<head><title>로그인성공</title></head>
<body>

로그인에 성공했습니다.

</body>
</html>
<%
	} else { // 로그인 실패시
%>
<script>
alert("로그인에 실패하였습니다.");
history.go(-1);
</script>
<%
	}
%>
