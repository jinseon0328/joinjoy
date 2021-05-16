<%@page import="com.osk.team.domain.Member"%>
<%@page import="com.osk.team.domain.Qna"%>
<%@page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<title>QnA 상세</title>
</head>
<body>
<h1>QnA 게시글 상세보기</h1>
<%
Qna q = (Qna) request.getAttribute("qna");
 if (q != null) {
   %>
  
<form action='update' method='post'>
<table border='1'>
<tbody>
<tr><th>번호</th> <td><input type='text' name='no' value='<%=q.getNo()%>' readonly></td></tr>
      <tr><th>제목</th> <td><input name='title' type='text' value='<%=q.getTitle()%>'></td></tr>
      <tr><th>내용</th> <td><textarea name='content' rows='10' cols='60'><%=q.getContent()%></textarea></td></tr>
      <tr><th>작성자</th> <td><%=q.getWriter().getName()%></td></tr>
      <tr><th>등록일</th> <td><%=q.getRegisteredDate()%></td></tr>
<%
      if (q.getAnswer() != null) { %>
        <tr><th>답변내용</th> <td><%=q.getAnswer()%>
        <tr><th>답변일</th> <td>%<%=q.getAnswerDate()%>
 <%      
      } 
%> 
      </tbody>
<%
      Member loginUser = (Member) request.getSession().getAttribute("loginUser");
      if (loginUser != null && q.getWriter().getNo() == loginUser.getNo()) {
%>
        <tfoot>
        <tr><td colspan='2'>
        <input type='submit' value='변경'>
           <a href='delete?no=<%=q.getNo()%>'>삭제</a>
        </td></tr>
        </tfoot>
<%}%>

      </table>
      </form>

      <%} else {%>
      <p>해당 번호의 게시글이 없습니다.</p>
      <%}%>

<p><a href='list'>목록</a></p>
</body>
</html>