<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" cellpadding="2" cellspacing="2">
		<tr>
			<td>년도</td>
			<td>학기</td>
			<td>이수학점</td>
			<td>상세보기</td>
		</tr>
		<c:forEach var="offer" items="${offers}">
			<tr>
				<td><c:out value="${offer.year}"></c:out></td>
				<td><c:out value="${offer.semester}"></c:out></td>
				<td><c:out value="${offer.credits}"></c:out></td>
				<td><a href ="${pageContext.request.contextPath}/detailoffers?year=${offer.year}&semester=${offer.semester}">링크</a>
			</tr>
		</c:forEach>
	</table>
</body>
</html>