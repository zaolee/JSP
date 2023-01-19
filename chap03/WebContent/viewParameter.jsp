<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<%
	request.setCharacterEncoding("utf-8");
%> <!-- 파라마타가 한글이 포함되어 있는 경우 깨지기 때문에 저렇게 설정한거, get방식은 상관없지만, post방식은 넣어줘야함, 걍 무조건 넣어주기 -->
<html>
<head><title>요청 파라미터 출력</title></head>
<body>
<b>request.getParameter() 메서드 사용</b><br>
name 파라미터 = <%= request.getParameter("name") %> <br>
<!-- 파라매타 name에 입력한건 뭐냐 -->

address 파라미터 = <%= request.getParameter("address") %>
<p>
<b>request.getParameterValues() 메서드 사용</b><br>
<%
	String[] values = request.getParameterValues("pet");
	// getParameterValues : pet에 있는 값들을 string 배열로 리턴 (pet은 string 임)

	if (values != null) {
	for (int i = 0 ; i < values.length ; i++) {
%>
	<%= values[i] %> <!-- 	여기만 표현식 : 왜 굳이? 출력 : 표현식 -->
<%
		}
	}
%>
<p>
<b>request.getParameterNames() 메서드 사용</b><br>
<%
	Enumeration paramEnum = request.getParameterNames();
	while(paramEnum.hasMoreElements()) {
		String name = (String)paramEnum.nextElement();
%>
		<%= name %>
<%
	}
%>
<p>
<b>request.getParameterMap() 메서드 사용</b><br>
<%
	Map parameterMap = request.getParameterMap();
	String[] nameParam = (String[])parameterMap.get("name");
	if (nameParam != null) {
%>
name = <%= nameParam[0] %>
<%
	}
%>
</body>
</html>
