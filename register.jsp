<%@page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.util.Date,java.sql.*"%>
<jsp:useBean id="lb" class="beans.LoginBean" scope="session" />
<jsp:setProperty name="lb" property="*" />
<html>

<head>
<meta charset="UTF-8">
<title>[로그인]</title>
</head>
<style>
body {
	font-size: 24pt;
}
</style>

<body>
	<%
	request.setCharacterEncoding("utf-8");
	String id, pw, c_pw, name, address, address_detail;
	id = request.getParameter("id");
	pw = request.getParameter("pw");
	c_pw = request.getParameter("c_pw");
	name = request.getParameter("name");
	address = request.getParameter("address");
	address_detail = request.getParameter("address_detail");

	if (!pw.equals(c_pw)) {
		out.println("<script>");
		out.println("alert('비밀번호가 틀립니다.');");
		out.println("window.history.back();");
		out.println("</script>");
	}
	lb.connect();

	if (lb.registerUser(id, pw, name, address, address_detail)) {
		out.println("<script>");
		out.println("alert('회원가입이 완료되었습니다.');");
		out.println("window.location.replace('login.html');");
		out.println("</script>");
	} else {
		out.println("<script>");
		out.println("alert('데이터 베이스 오류 잠시 후 다시 시도하십시오.');");
		out.println("window.history.back();");
		out.println("</script>");
	}
	%>
	<div></div>
</body>

</html>