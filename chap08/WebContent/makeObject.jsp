<%@ page contentType="text/html; charset=utf-8"%>
<jsp:useBean id="member" scope="request" class="chap08.member.MemberInfo" />
<!-- MEMBER라는 이름으로 자바빈 사용해서 객체 사용 -->
<%
// chap08.member.MemberInfo member = new chap08.member.MemberInfo(); 이게 자바빈 안썻을때 객체생성 방법
member.setId("madvirus");
member.setName("최범균");
%>
<jsp:forward page="/useObject.jsp" />
<!-- 이걸 포워드를 사용해서 useObject 로 넘어가 -->

<!-- 자바빈 객체 만들어서 객체안에 내용을 넣음 그담 다른 페이지에서 지정 페이지 포워드 해서 지정페이지 형식에다 객체내용 넣기 -->
