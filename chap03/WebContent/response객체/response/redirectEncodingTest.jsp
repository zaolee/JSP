<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.net.URLEncoder" %>
<%
    String value = "�ڹ�";
    String encodedValue = URLEncoder.encode(value);
    response.sendRedirect("first.jsp?name=" + encodedValue);
%>