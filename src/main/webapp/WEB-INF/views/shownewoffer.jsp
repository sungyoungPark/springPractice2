<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학기별 이수학점</title>
</head>
<body>
	<table border="1" cellpadding="2" cellspacing="2">
		<tr>
			<td>수강년도</td>
			<td>학기</td>
			<td>교과코드</td>
			<td>교과목명</td>
			<td>구분</td>
			<td>학점</td>
			<td>삭제</td>
		</tr>
		<c:forEach var="newoffers" items="${newoffers}">
			<tr>

				<td><c:out value="${newoffers.year}"></c:out></td>
				<td><c:out value="${newoffers.semester}"></c:out></td>
				<td><c:out value="${newoffers.course_code}"></c:out></td>
				<td><c:out value="${newoffers.course_name}"></c:out></td>
				<td><c:out value="${newoffers.division}"></c:out></td>
				<td><c:out value="${newoffers.credits}"></c:out></td>
				<td><a href ="${pageContext.request.contextPath}/dodelete?course_code=${newoffers.course_code}">삭제</a>
				</td>
				</tr>
		</c:forEach>
	</table>
	<a href="${pageContext.request.contextPath}">홈으로</a>
</body>
</html>