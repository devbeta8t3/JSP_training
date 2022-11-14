<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	<!-- split : 문자열을 설정한 구분자로 분리하여 배열형태로 반환 -->
	<c:set var="texts" value="${fn:split('Hello, Java Server Pages!', ' ') }" />
	
	<c:forEach var="i" begin="0" end="${fn:length(texts)-1 }">
		<p>text[${i}] = ${texts[i] }
	</c:forEach>
	
	<!-- join : 배열형태의 문자열을 설정한 구분자로 연결하여 반환 -->
	<p> <c:out value="${fn:join(texts, '-') }" />
</body>
</html>