<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<%
	MultipartRequest multi = new MultipartRequest(request, 			// request 객체
												"E:\\upload", 		// 서버 경로
												5 * 1024 *1024 , 	// 5MB 최대 크기
												"utf-8", 
												new DefaultFileRenamePolicy());
	
	Enumeration params = multi.getParameterNames();	// 파라미터의 이름들을 params에 집어넣는다.
	
	while (params.hasMoreElements()){
		String name = (String) params.nextElement();		// 파라미터 이름 뽑아오기
		String value = multi.getParameter(name);			// 뽑아온 이름의 파라미터 값 반환
		out.println(name+ " = " +value+ "<br>");
	}
	out.println("----------------------------------<br>");
	
	Enumeration files = multi.getFileNames();				// 중요
	
	while (files.hasMoreElements()){
		String name = (String) files.nextElement();			// 파라미터 이름 뽑아오기
		String filename = multi.getFilesystemName(name);	// 서버에 실제 업로드된 파일명
		String original = multi.getOriginalFileName(name);	// 서버에 업로드한 실제 파일명
		String type = multi.getContentType(name);			// 콘텐츠 유형 반환
		File file = multi.getFile(name);					// 업로드된 파일 객체 반환 // 중요
		
		out.println("요청 파라미터 이름 : " +name+ "<br>");
		out.println("실제 파일 이름 : " +original+ "<br>");
		out.println("저장 파일 이름 : " +filename+ "<br>");
		out.println("파일 콘텐츠 이름 : " +type+ "<br>");
		
		if (file != null){
			out.println("파일 크기 : " +file.length());	// 파일 객체의 길이??.
			out.println("<br>");
		}

	}

%>