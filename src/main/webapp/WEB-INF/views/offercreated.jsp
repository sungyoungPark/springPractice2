<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강신청 성공</title>
</head>
<body>
${offer.course_code} / ${offer.course_name} 이 수강신청 되었습니다.  <br/>
<p> <a href =" ${pageContext.request.contextPath}"> 홈 화면으로 </a> </p>

</body>
</html>