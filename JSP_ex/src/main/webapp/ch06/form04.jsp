<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
		<h3>회원 가입</h3>
		
		<%-- form data 처리하기 : action 주소 삽입 --%>
		<form action="form04_process.jsp" name="member" method="post">
			<p> 아이디: <input type="text" name="id"><input type="button" value="아이디 중복검사">
			<p> 비밀번호: <input type="password" name="passwd">
			<p> 이름: <input type="text" name="name">
			<p> 연락처: 
					<select name="phone1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="019">019</option>
					</select> - 
					<input type="text" name="phone2" maxlength="4" size="4"> - 
					<input type="text" name="phone3" maxlength="4" size="4">
			<p> 성별: <input type="radio" name="sex" value="남성" checked>남성 
					 <input type="radio" name="sex" value="여성" >여성
			<p> 취미: 독서<input type="checkbox" name="hobby1" value="독서" checked> 
			  		 운동<input type="checkbox" name="hobby2" value="운동"> 
					 영화<input type="checkbox" name="hobby3" value="영화"> 
			<p> <textarea name="comment" cols="30" rows="3" placeholder="가입 인사를 입력하세요"></textarea>
			
			<p> <input type="submit" value="가입하기">
				<input type="reset" value="다시쓰기">
		</form>
</body>
</html>