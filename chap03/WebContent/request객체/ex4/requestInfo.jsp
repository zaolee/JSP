<%@ page contentType = "text/html; charset=euc-kr" %>

<html>
<head><title>Ŭ���̾�Ʈ �� ���� ����</title></head>
<body>

Ŭ���̾�ƮIP = <%= request.getRemoteAddr() %> <br>
��û�������� = <%= request.getContentLength() %> <br>
��û���� ���ڵ� = <%= request.getCharacterEncoding() %> <br>
��û���� ����ƮŸ�� = <%= request.getContentType() %> <br>
��û���� �������� = <%= request.getProtocol() %> <br>
��û���� ���۹�� = <%= request.getMethod() %> <br>
��û URI = <%= request.getRequestURI() %> <br>
���ؽ�Ʈ ��� = <%= request.getContextPath() %> <br>
�����̸� = <%= request.getServerName() %> <br>
������Ʈ = <%= request.getServerPort() %> <br>

</body>
</html>