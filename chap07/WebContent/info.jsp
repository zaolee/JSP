<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>INFO</title>
</head>
<body>
	<table width="100%" border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td>제품번호</td>
			<td>XXXX</td>
		</tr>
		<tr>
			<td>가격</td>
			<td>10,000원</td>
		</tr>
	</table>

	<jsp:include page="infoSub.jsp" flush="false">
		<jsp:param name="type" value="A" />
		<!-- 	이렇게 넘겨줌, 그럼 "infoSub.jsp" 여기서 불러서 사용하는거 -->
	</jsp:include>

</body>
</html>
