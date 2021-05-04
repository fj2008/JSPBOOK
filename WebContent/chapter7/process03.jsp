<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String fileUploadPath = "C:\\upload";
	
	DiskFileUpload upload = new DiskFileUpload();
	
	List items = upload.parseRequest(request);
	
	Iterator params = items.iterator();
	
	while(params.hasNext()) {
		FileItem item = (FileItem) params.next();
		
		if(item.isFormField()) {
			String title = item.getString("UTF-8");
			out.println("<h3>" + title + "</h3>");
		} else {
			String fileName = item.getName();
			fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
			
			File file = new File(fileUploadPath + "/" + fileName);
			item.write(file);
			
			out.print("파일 이름 : " + fileName + "<br>");
		}
	} // end while
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