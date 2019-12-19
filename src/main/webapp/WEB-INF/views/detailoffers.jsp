<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 조회</title>
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
		</tr>
		<c:forEach var="detailoffers" items="${detailoffers}">
			<tr>
				<td><c:out value="${detailoffers.year}"></c:out></td>
				<td><c:out value="${detailoffers.semester}"></c:out></td>
				<td><c:out value="${detailoffers.course_code}"></c:out></td>
				<td><c:out value="${detailoffers.course_name}"></c:out></td>
				<td><c:out value="${detailoffers.division}"></c:out></td>
				<td><c:out value="${detailoffers.credits}"></c:out></td>

			</tr>
		</c:forEach>
	</table>
	<a href="${pageContext.request.contextPath}">홈으로</a>
</body>
</html>