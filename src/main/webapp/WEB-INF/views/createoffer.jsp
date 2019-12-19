<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2020 1학기 수강신청</title>
<link rel = "stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
<h2>수강신청 </h2><br/>
	<sf:form method="post" action="${pageContext.request.contextPath}/docreate" modelAttribute="offer">
		<table class="formtable">
			<tr>
				<td class="label">과목코드:</td>
				<td><sf:input class="control" type="text" path="course_code" /><br/>
				<sf:errors path="course_code" class="error" /> </td>
				
			</tr>
			<tr>
				<td class="label">과목이름:</td>
				<td><sf:input class="control" type="text" path="course_name" /><br/>
				<sf:errors path="course_name" class="error" /> </td>
			</tr>
			<tr>
				<td class="label">구분:</td>
				<td><sf:input class="control" type="text" path="division" /><br/>
				<sf:errors path="division" class="error" /> </td>
			</tr>
				<tr>
				<td class="label">학점:</td>
				<td><sf:input class="control" type="text" path="credits"/><br/>
				<sf:errors path="credits" class="error" /> </td>
			</tr>
			<tr>
				<td class="label"></td>
				<td><input class="control" type="submit" value="수강 신청" /></td>
			</tr>
		</table>
	</sf:form> 
	<a href="${pageContext.request.contextPath}">홈으로</a>
</body>
</html>