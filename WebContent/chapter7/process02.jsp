<%@page import="java.io.IOException"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	try {
		MultipartRequest multi = new MultipartRequest(request, "upload", 5*1024*1024, "UTF-8", new DefaultFileRenamePolicy());

		Enumeration params = multi.getParameterNames();
		
		while(params.hasMoreElements()) {
			String name = (String) params.nextElement();
			String value = multi.getParameter(name);
			out.println(name + " = " + value + "<br>");
		}
		out.println("<hr>");
		
		Enumeration files = multi.getFileNames();
		while(files.hasMoreElements()) {
			String name = (String) files.nextElement();
			String filename = multi.getFilesystemName(name);
			String type = multi.getContentType(name);
			File file = multi.getFile(name);
			
			out.println("요청 파라미터 이름 : " + name + "<br>");
			out.println("파일 이름 : " + filename + "<br>");
			out.println("파일 컨텐츠 유형 : " + type + "<br>");
			
			if(file != null) {
				out.println("파일 크기 : " + file.length() + "<br>");
			}
		}
	} catch(IOException e) {
		out.println("<p>파일은 최대 5MB까지만 업로드할 수 있습니다.</p>");
	} catch(Exception e) {
		out.println("<p>비정상적인 접근입니다.</p>");
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>