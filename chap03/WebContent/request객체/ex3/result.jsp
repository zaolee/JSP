<%@ page contentType="text/html;charset=euc-kr" %>

<html>
	<head><title>�������� ���</title>
	</head>
	<body>

	<%
		String choiceseason = request.getParameter("season");
		String result = "";

		if(choiceseason.equals("spring")){
			result = "��";
		} else if(choiceseason.equals("summer")){
			result = "����";
		} else if(choiceseason.equals("autumn")){
			result = "����";
		} else if(choiceseason.equals("winter")){
			result = "�ܿ�";
		}
	%>

		����� ���� �����ϴ� ������ <%=result%> �Դϴ�.
	</body>
</html>