<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>폼 생성</title>
</head>
<body>

<!-- 	<form action="/chap03/viewParameter.jsp" method="post">  -->
<!-- 	url에 정보가 안떠, 얘는 viewpaeameta에서 utf-8을 넣어줘야 함 -->

	<form action="/chap03/viewParameter.jsp" method="get"> 
<!-- 	url에 내가 입력한 정보(파라매타) 뜸 -->
		이름: <input type="text" name="name" size="10"> <br> 
		주소: <input	type="text" name="address" size="30"> <br> 
		좋아하는 동물: 
			<input type="checkbox" name="pet" value="dog">강아지 
			<input type="checkbox" name="pet" value="cat">고양이 
			<input type="checkbox" name="pet" value="pig">돼지 
			<br> 
			<input type="submit" value="전송">
	</form>
</body>
</html>
