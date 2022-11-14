<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.apache.commons.fileupload.*" %>		
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
 
<html>
<head>
	<title>File Upload</title>
</head>

<body>

	<%
		String fileUploadPath =  "E:\\upload"; 
		
		DiskFileUpload upload = new DiskFileUpload();		// common-fileupload
		
		List items = upload.parseRequest(request);			// java.util
		
		Iterator params = items.iterator();		// 반복으로 항목들 꺼내기	// java.util
		
		while (params.hasNext()){
			FileItem fileItem = (FileItem) params.next();
			if (!fileItem.isFormField()){
				String fileName = fileItem.getName();
				fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
				File file = new File(fileUploadPath+ "/" +fileName);	// java.io
				fileItem.write(file);		// 업로드	실행					// 동일파일명 있으면 에러남
			}
		}
	%>
</body>
</html>