<%@page import="javax.swing.text.Document"%>
<%@page	contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="lb" class="beans.LoginBean" scope="session" />
<jsp:setProperty name="lb" property="*" />
<html>

<head>
    <title>[로그아웃]</title>
</head>
<body>
    <%	
    	session.invalidate();
    	response.sendRedirect("index.jsp");
%>
</body>

</html>