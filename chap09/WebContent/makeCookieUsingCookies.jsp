<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="util.Cookies"%>
<%
	response.addCookie(Cookies.createCookie("name", "최범균"));
	response.addCookie(Cookies.createCookie("id", "madvirus", "/chap09", -1));
// 	여기서 -1 :  삭제하지 않겠다.(유효기간이 없다. 무한)
%>
<html>
<head>
<title>Cookies 사용 예</title>
</head>
<body>Cookies를 사용하여 쿠키 생성

</body>
</html>
