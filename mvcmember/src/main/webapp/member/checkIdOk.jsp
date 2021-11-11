<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>${requestScope.id }은(는) 사용 가능합니다</h3>
<input type="hidden" id="checkId" value="${requestScope.id }"> <!-- html안에서 변수 설정 -->
<br>
<input type="button" value="사용하기" id="checkIdClose">

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../js/member.js"></script>
<script type="text/javascript">
/* $('#checkIdClose').click(function(){
	alert('${requestScope.id }');
}); */
</script>
</body>
</html>




