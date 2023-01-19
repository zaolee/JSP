<%@ page contentType = "text/html; charset=utf-8" %>
<%
	request.setCharacterEncoding("utf-8"); // 한글인 경우 안깨지게 해줌(get방식은 ㄱㅊ지만 post방식일땐 꼭 쓰기)
%>
<jsp:useBean id="memberInfo" class="chap08.member.MemberInfo" />
<%-- <jsp:setProperty name="memberInfo" property="id" param="id" /> --%>
<%-- <jsp:setProperty name="memberInfo" property="name" param="name" /> --%>
<%-- <jsp:setProperty name="memberInfo" property="email" param="email" /> --%>
<!-- 이거 다 member에 있는 필드(프로퍼티) -->
<!-- parm은 맴버십폼에 있는거 -->
<!-- 근데 폼 이렇게 일일히 한줄씩 짜는거 개에바임(ssap 노가다) -->

<jsp:setProperty name="memberInfo" property="*" />
<!-- 이렇게 *처리 함으로서 한방에 표현 가능 -->

<!-- param 안에다 필드값 넣어주면 돼 -->

<jsp:setProperty name="memberInfo" property="password"
				 value="<%= memberInfo.getEmail() %>" />
<html>
<head><title>가입</title></head>
<body>

<table width="400" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td>아이디</td>
	<td><jsp:getProperty name="memberInfo" property="id" /></td>
	<td>암호</td>
	<td><jsp:getProperty name="memberInfo" property="password" /></td>
</tr>
<tr>
<tr>
    <td>이름</td>
    <td><jsp:getProperty name="memberInfo" property="name" /></td>
    <td>이메일</td>
    <td><jsp:getProperty name="memberInfo" property="email" /></td>
</tr>
</table>

</body>
</html>
