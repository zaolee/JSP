<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.util.Calendar" %>
<%
	Calendar cal = Calendar.getInstance();
	request.setAttribute("time", cal);
// 	여기서 time은 변수임 time에 cal 넣으셈
%>
<!-- setAttribute("time", cal) : object 타입 -->

<jsp:forward page="/to/viewTime.jsp" />
<!-- to 에 viewTime으로 보냄 -->
