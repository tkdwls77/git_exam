<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.bean.BoardDTO" %>    
<%@ page import="board.dao.BoardDAO" %>

<%
//데이터
int seq = Integer.parseInt(request.getParameter("seq"));
int pg = Integer.parseInt(request.getParameter("pg"));

//DB
BoardDAO boardDAO = BoardDAO.getInstance();
BoardDTO boardDTO = boardDAO.boardView(seq);

//응답
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" cellspacing="0" cellpadding="5" frame="hsides" rules="rows">
	<tr>
		<td colspan="3"><h3><%=boardDTO.getSubject() %></h3></td>
	</tr>
	
	<tr>
		<td width="150">글번호 : <%=boardDTO.getSeq() %></td>
		<td width="150">작성자 : <%=boardDTO.getId() %></td>
		<td width="150">조회수 : <%=boardDTO.getHit() %></td>
	</tr>
	
	<tr>
		<td colspan="3" height="200" valign="top">
			<pre><%=boardDTO.getContent() %></pre>
		</td>
	</tr>
</table>

<input type="button" id="boardListBtn" value="목록" onclick="location.href='boardList.jsp?pg=<%=pg%>'">
</body>
</html>





















