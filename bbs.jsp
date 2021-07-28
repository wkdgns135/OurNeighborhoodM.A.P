<jsp:useBean id="bbs" class="beans.Bbs" scope="session" />
<jsp:setProperty name="bbs" property="*" />

<%@page import="javax.swing.text.Document"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.util.ArrayList"%>


<html>

<head>
<title>[업로드]</title>
</head>
<style>
body {
	font-size: 24pt;
}
</style>

<body>
	<%
		
	String path = request.getRealPath("temp");
	int size = 1024 * 1024 * 5120; //512MB
	ArrayList saveFiles = new ArrayList();
	ArrayList originFiles = new ArrayList();
	String thumbnail, video, title, content, category;
	try {
		MultipartRequest multiRequest = new MultipartRequest(request, path, size, "utf-8", new DefaultFileRenamePolicy());
		
		
		Enumeration files = multiRequest.getFileNames();

		while (files.hasMoreElements()) {
			String n = (String) files.nextElement();
			saveFiles.add(multiRequest.getFilesystemName(n));
			originFiles.add(multiRequest.getOriginalFileName(n));
		}
		thumbnail = saveFiles.get(1).toString();
		video = saveFiles.get(0).toString();
		title = multiRequest.getParameter("title");
		content = multiRequest.getParameter("content");
		category = multiRequest.getParameter("category");
		int number =  Integer.parseInt(session.getAttribute("number").toString());
		
		bbs.connect();
		if(bbs.uploadFile(thumbnail, video, title, content, category, number)){
			System.out.println("성공");
		}else{
			System.out.println("실패");
		}
		response.sendRedirect("index.jsp");
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
	<div>${sid}에서관리자(${name})로 로그인</div>
</body>

</html>