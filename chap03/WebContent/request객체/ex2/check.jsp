<%@ page contentType="text/html;charset=euc-kr" %>

<html> 
<body>

<%
  String[] choice = request.getParameterValues("site"); 
  String result = "";

  for(int i=0; i<choice.length; i++){
    result = result + choice[i]+ " ";	
  }
%>    

<center>
	���ϴ� 
	<font color = blue><%=result%></font>
	�� �����Ͻô±���.
</center>		

</body>
</html>