<%@page import="javax.swing.text.Document"%>
<%@page	contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="lb" class="beans.LoginBean" scope="session" />
<jsp:setProperty name="lb" property="*" />
<html>

<head>
    <title>[로그인]</title>
</head>
<style>
    body {
        font-size: 24pt;
    }
</style>

<body>
    <%	
    String id,pw;
    String[] user;
    id = request.getParameter("id");
    pw = request.getParameter("pw");
    
    lb.connect();
    
    user = lb.checkUser(id,pw);
    
    if(user == null){
    	response.sendRedirect("login.html");
    }
    else{
    	session.setAttribute("number", user[0]);
    	session.setAttribute("name", user[1]);
    	String[] str = user[2].split("\\s");
    	session.setAttribute("address", str[2]);
    	session.setAttribute("sid", session.getId());
    	response.sendRedirect("index.jsp");
    }
    
    lb.disconnect();
%>
<div>
	${sid}에서 관리자(${cid})로 로그인
</div>
</body>

</html>