<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
th {
	font-size: 16px;
}

td {
	font-size: 13px;
}

#subjectA:link { color: black; text-decoration: none; }
#subjectA:visited { color: black; text-decoration: none; }
#subjectA:hover { color: darkgreen; text-decoration: underline; }
#subjectA:active { color: black; text-decoration: none; }

#currentPaging {
	color: red;
	text-decoration: underline;
}
#paging {
	color: black;
	text-decoration: none;
}

</style>
</head>
<body>
<table border="1" cellspacing="0" cellpadding="5" frame="hsides" rules="rows">
	<tr>
		<th width="100">글번호</th>
		<th width="300">제목</th>
		<th width="100">작성자</th>
		<th width="100">조회수</th>
		<th width="100">작성일</th>
	</tr>
	
	<c:if test="${list!=null }">
		<c:forEach var="boardDTO" items="${list }">
			<tr>
				<td align="center">${boardDTO.seq }</td>
				<td>
					<a href="boardView.jsp?seq=${boardDTO.seq }&pg=${pg}" id="subjectA">${boardDTO.subject }
				</td>
				<td align="center">${boardDTO.id }</td>
				<td align="center">${boardDTO.hit }</td>
				<td align="center">${boardDTO.logtime }</td>
			</tr>
		</c:forEach>
	</c:if>
</table>
<div style="width: 750px; text-align: center;">
	<c:forEach var="i" begin="1" end="${totalP }">
		<c:if test="${i == pg }">
			[<a id="currentPaging" href="/mvcmember/board/boardList.do?pg=${i }">${i }</a>]
		</c:if>
		<c:if test="${i != pg }">
			[<a id="paging" href="/mvcmember/board/boardList.do?pg=${i }">${i }</a>]
		</c:if>
	</c:forEach>
</div>

</body>
</html>


















