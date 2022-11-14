<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" --%>
<%--@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	
	<p> java 문자열 검색		<!-- contains: 검색대상 문자열의 포함여부 -->
	<p> Hello, Java Server Pages! => ${fn:contains("Hello, Java Server Pages!", "java") }
	<p> hello, Java Server Pages! => ${fn:containsIgnoreCase("hello, java server pages!", "java") }
	
</body>
</html>