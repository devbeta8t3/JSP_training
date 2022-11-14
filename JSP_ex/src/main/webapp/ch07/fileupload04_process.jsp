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
		String path =  "E:\\upload"; 
		
		DiskFileUpload upload = new DiskFileUpload();
		
		upload.setSizeMax(1000000);
		upload.setSizeThreshold(4096);		// 4kB
		upload.setRepositoryPath(path);
		
		List items = upload.parseRequest(request);
		
		Iterator params = items.iterator();
		
		while (params.hasNext()){
			FileItem item = (FileItem) params.next();
			
			if (item.isFormField()){
				String name = item.getFieldName();
				String value = item.getString("utf-8");
				out.println(name+ "=" +value+ "<br>");
			}
			else {
				String fileFieldName = item.getFieldName();
				String fileName = item.getName();
				String contentType = item.getContentType();
				
				fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
				long fileSize = item.getSize();
				
				File file = new File(path+ "/" +fileName);
				item.write(file);									// 동일파일명 있으면 에러남
				
				out.println("-----------------------------<br>");
				out.println("요청 파라미터 이름 : " +fileFieldName+ "<br>");
				out.println("저장 파일 이름 : " +fileName+ "<br>");
				out.println("파일 콘텐츠 유형 : " +contentType+ "<br>");
				out.println("파일 크기 : " +fileSize);
			}
		}
	%>
</body>
</html>