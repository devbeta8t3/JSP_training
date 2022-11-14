<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
		<%-- 폼데이터 처리 페이지 --%>
		
		<%
			request.setCharacterEncoding("utf-8");
		
			String id = request.getParameter("id");
			String passwd = request.getParameter("passwd");
			String name = request.getParameter("name");
			String phone1 = request.getParameter("phone1");
			String phone2 = request.getParameter("phone2");
			String phone3 = request.getParameter("phone3");
			String sex = request.getParameter("sex");
			
			String[] hobby = request.getParameterValues("hobby"); // 배열, getParameterValue 사용
/* 			String hobby1 = request.getParameter("hobby1");
			String hobby2 = request.getParameter("hobby2");
			String hobby3 = request.getParameter("hobby3"); */
			String comment = request.getParameter("comment");
		%>
			<p> 아이디: <%= id %>
			<p> 비밀번호: <%= passwd %>
			<p> 이름: <%= name %>
			<p> 연락처: <%= phone1 %>-<%= phone2 %>-<%= phone3 %>
			<p> 성별: <%= sex %>
			<%-- 배열을 이용하여 취미 출력 --%>
			<p> 취미: <%
						if (hobby!=null){
							for (int i=0; i<hobby.length; i++){
								out.print(" " +hobby[i]);
							}
						}
					%>
			<p> 가입 인사: <%= comment %>
</body>
</html>