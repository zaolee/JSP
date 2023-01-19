<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.io.*" %>
<html>
<head><title>절대 경로 사용하여 자원 읽기</title></head>
<body>

<%
	char[] buff = new char[128];
	int len = -1;
	
	String filePath = "C:\\dev\\workspace\\jsp\\chap05\\WebContent\\message\\notice.txt"; // \를 두개씩 넣는 이유 \t => 탭키, \\ 두개 넣어주면 특수키가 아닌 백슬레시로 쓰겠다란 뜻 
	// String filePath = "./message/notice.txt"; 상대적 위치 안됨
	// 상대적 경로로 입력하기
	try(InputStreamReader fr = new InputStreamReader(new FileInputStream(filePath), "UTF-8")) { // 문자기반으로 인코딩 하겠다
		while ( (len = fr.read(buff)) != -1) {
			out.print(new String(buff, 0, len));
		}
	} catch(IOException ex) {
		out.println("익셉션 발생: "+ex.getMessage());
	}
%>

</body>
</html>
