<%@page import="com.osk.team.domain.Qna"%>
<%@page import="java.util.List"%>
<%@ page 
    language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>QnA 목록</title>
</head>
<body>
<h1>QnA 목록</h1>
<p><a href='add'>QnA 작성</a></p> 
<table border='1'>
<thead>
<tr>
<th>번호</th> <th>제목</th> <th>작성자</th> <th>작성일</th>
</tr>
</thead>
<tbody>
<c:forEach items="${list}" var="q">
        <tr>
            <td>${q.getNo()}</td>
            <td><a href='detail?no=${q.getNo()}'>${q.getTitle()}</a></td>
            <td>${q.getWriter().getName()}</td>
            <td>${q.getRegisteredDate()}</td> 
            </tr>
</c:forEach>
      </tbody>
      </table>
<form action='list' method='get'>
<input type='search' name='keyword' value='${param.keyword}'> 
<button>내 글 보기</button>
</form>
      </body>
      </html>