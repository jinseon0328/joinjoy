<<<<<<< HEAD
=======
<%@page import="com.osk.team.service.QnaService"%>
<%@page import="com.osk.team.domain.Member"%>
<%@page import="com.osk.team.domain.Qna"%>
>>>>>>> 376c87cad1baad46699ac45b7ccd51166aab9cf0
<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>QnA 상세</title>
<<<<<<< HEAD
=======
<jsp:useBean id="loginUser" class="com.osk.team.domain.Member" scope="session"/>

>>>>>>> 376c87cad1baad46699ac45b7ccd51166aab9cf0
<c:if test="${not empty loginUser and loginUser.no == qna.writer.no or loginUser.power == 1 }">

</head>
<body>
<h1>QnA 게시글 상세보기(JSP + JSP 액션태그 + EL)</h1>
<form action='send' method='post'>
  <input type='submit' value='메일전송'>
</form>
<form action='update' method='post'>
<table border='1'>
<tbody>
<tr><th>번호</th> <td><input type='text' name='no' value='${qna.no}' readonly></td></tr>
<tr><th>제목</th> <td><input name='title' type='text' value='${qna.title}'></td></tr>
<tr><th>내용</th> <td><textarea name='content' rows='10' cols='60'>${qna.content}</textarea></td></tr>
<tr><th>작성자</th> <td>${qna.writer.name}</td></tr>
<tr><th>등록일</th> <td>${qna.registeredDate}</td></tr>

<c:if test="${qna.getAnswer() != null or loginUser.power == 1 }">
<tr><th>답변일</th> <td>${qna.answerDate}</td></tr>
<tr><th>답변내용</th> <td><textarea name='answer' rows='10' cols='60'>${qna.answer}</textarea></td></tr>

</c:if>
</tbody>

        <tfoot>
        <tr><td colspan='2'>
        <c:if test="${loginUser.getPower() == 1 || qna.getAnswer() == null }">
        <input type='submit' value='변경'>
        </c:if>
           <a href='delete?no=${qna.no}'>삭제</a>
        </td></tr>
        </tfoot>

</c:if>

<<<<<<< HEAD
<c:if test="${empty loginUser and loginUser.no != qna.writer.no or loginUser.power != 1}">
    <tr>
      <td colspan='5'>해당 게시자가 아닙니다.</td>
    </tr>
</c:if>
=======
<!--  <c:if test="${empty loginUser and loginUser.no != qna.writer.no or loginUser.power != 1}>
    <tr>
      <td colspan='5'>해당 게시자가 아닙니다.</td>
    </tr>
</c:if>-->
>>>>>>> 376c87cad1baad46699ac45b7ccd51166aab9cf0

<p><a href='list'>목록</a></p>

</body>
</html>