<%@ page contentType="text/html; charset=utf-8"%>
<%
String name = request.getParameter("name"); // "이름"
String value = request.getParameter("value"); // "쏘연"
// 	이거 지금 매개변수가 없어서 창은 설정안했다고 뜨지만, url에 값 넣어주면 됨

if (name != null && value != null) {
	application.setAttribute(name, value); // application.setAttribute("이름", "홍길동");
}
%>

<html>
<head>
<title>application 속성 지정</title>
</head>
<body>
	<%
	if (name != null && value != null) {
	%>
	application 기본 객체의 속성 설정:
	<br> <%=name%> = <%=value%>
	<br> 2름 = <%=application.getAttribute(name)%> 
<!-- 	저기 (name) 대신 ("이름") 이라 입력해도 가능 : 이거 url에 name란에 "이름"이라고 지정했을때만 가능 -->

	<%
	} else {
	%>
	application 기본 객체의 속성 설정 안 함
	<%
	}
	%>
</body>
</html>
