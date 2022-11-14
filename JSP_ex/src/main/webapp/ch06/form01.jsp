<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>	<%-- 기본적인 form 양식 --%>
		<h3>회원 가입</h3>
		
		<form action="#" name="member" method="post">
			<p> 아이디: <input type="text" name="id"><input type="button" value="아이디 중복검사">
			<p> 비밀번호: <input type="password" name="passwd">
			<p> 이름: <input type="text" name="name">
			<p> 연락처: <input type="text" name="phone1" maxlength="4" size="4"> - 
						<input type="text" name="phone2" maxlength="4" size="4"> - 
						<input type="text" name="phone3" maxlength="4" size="4">
			<p> 성별: <input type="radio" name="sex" value="남성" checked>남성 
					 <input type="radio" name="sex" value="여성" checked>여성
			<p> 취미: 독서<input type="checkbox" name="hobby1" checked> 
			  		 운동<input type="checkbox" name="hobby2" > 
					 영화<input type="checkbox" name="hobby3" > 
			<p> <input type="submit" value="가입하기">
				<input type="reset" value="다시쓰기">
		</form>
</body>
</html>