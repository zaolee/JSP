<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Enumeration"%>
<html>
<head>
<title>초기화 파라미터 읽어오기</title>
</head>
<body>

	초기화 파라미터 목록:
	<ul>
		<%
		Enumeration<String> initParamEnum = application.getInitParameterNames();
		// 이미 객체로 만들어져 있기 때문에 new를 쓰지 않아도 됨
		
		while (initParamEnum.hasMoreElements()) {
			String initParamName = initParamEnum.nextElement();
		%>
		<li><%=initParamName%> = 
			<%=application.getInitParameter(initParamName)%>
			<%
			}
			%>
	</ul>
</body>
</html>
