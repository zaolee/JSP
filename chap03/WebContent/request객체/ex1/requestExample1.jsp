<%@ page contentType="text/html;charset=euc-kr"%>

<%
	request.setCharacterEncoding("euc-kr");
%>

<html>
<h1>Request ����1</h1>

<%
	String name = request.getParameter("name");
	String studentNum = request.getParameter("studentNum");
	String gender = request.getParameter("gender");
	String major = request.getParameter("major");

	if(gender.equals("m")){
		gender = "����";
	}else{
		gender = "����";
	}
%>

<body>
���� : <%=name%><p>
�й� : <%=studentNum%><p>
���� : <%=gender%><p>
�а� : <%=major%>
</body>
</html>

