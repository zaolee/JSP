<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="src/main/java.util.cookies"%>
<%
String id = request.getParameter("id");
String password = request.getParameter("password");

if (id.equals(password)) {
	// ID와 암호가 같으면 로그인에 성공한 것으로 판단.
	response.addCookie(Cookies.createCookie("AUTH", id, "/", -1));
	// 같으면 쿠키설정, auth 로 영원히..
%>
<html>
<head>
<title>로그인성공</title>
</head>
<body>로그인에 성공했습니다.

</body>
</html>
<%
} else { // 로그인 실패시
%>
<script>
	alert("로그인에 실패하였습니다.");
	history.go(-1);
// 	윈도우즈에있는거 그전 페이지로 이동하는 메서드
// 즉 로그인에 실패하면 다시 로그인창으로 뜨게끔/..
</script>
<%
}
%>
