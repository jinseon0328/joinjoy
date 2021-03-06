<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%> 
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>게시글 상세</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="../../css/header_wh.css" type="text/css">
</head>

<header>
    <button type="button" class="logo-box" onclick="location.href='../club/main'"><img  src="../../images/joinjoylogo-bl.png"></button>
    <button type="button" class="hotplace-box" onclick="location.href='../hotplace/list'"><img  src="../../images/hotplace-bl.png"></button>
    <div class="dropdown">
        <button class="dropbtn"><img  src="../../images/community-bl.png"></button>
        <div class="dropdown-content">
            <a href="../board/list?boardtype=1">꿀팁게시판</a>
            <a href="../board/list?boardtype=2">자유게시판</a>
            <a href="../board/list?boardtype=3">세컨핸즈샵</a>
            <a href="../club/reportList">신고게시판</a>
        </div>
    </div>
    <button type="button" class="discount-box" onclick="location.href='../discount/list'"><img  src="../../images/discount-bl.png"></button>
    <button type="button" class="qna-box" onclick="location.href='../qna/list'"><img  src="../../images/qna-bl.png"></button>
    <button type="button" class="faq-box" onclick="location.href='../faq/list'"><img  src="../../images/faq-bl.png"></button>

    <c:choose>
        <c:when test="${empty loginUser}">
            <button type="button" class="btn-outline-primary" onclick="location.href='../member/addd'">Sign up</button>
            <button type="button" class="btn btn-primary btn-sm" onclick="location.href='../login'">Login</button>
        </c:when>
        <c:otherwise>
            <button type="button" class="btn-outline-primary" onclick="location.href='../member/detail'">My page</button>
            <button type="button" class="btn btn-primary btn-sm" onclick="location.href='../logout'">Logout</button>
        </c:otherwise>
    </c:choose>
</header>

<body>
<div style="position:absolute; left:16.6%; top:10.8%; font-size:2em">게시글 상세보기</div>

<c:if test="${not empty board}">

<form action='update' method='post'>
<table border='1'>
<tbody>
<tr><th>번호</th> <td><input type='text' name='no' value='${board.no}' readonly></td></tr>
<tr><th>제목</th> <td><input name='title' type='text' value='${board.title}'></td></tr>

<tr><th>사진</th>
<c:if test="${not empty board.photos}">
  <c:forEach items="${board.photos}" var="p" >
  <c:set var="photo250x250Url">../../upload/${p.photo}_250x250.jpg</c:set>
   <td><img src='${photo250x250Url}'><br></td>
<%--    <input name='photo' type='file'></td> --%>  
   </c:forEach> 
</c:if>
</tr>

<tr><th>내용</th> <td><textarea name='content' rows='10' cols='60'>${board.content}</textarea></td></tr>
<tr><th>작성자</th> <td>${board.writer.name}</td></tr>
<tr><th>등록일</th> <td>${board.registeredDate}</td></tr>
<tr><th>조회수</th> <td>${board.viewCount}</td></tr>
</tbody>

<c:if test="${not empty loginUser and loginUser.no == board.writer.no or loginUser.power == 1 }">

<tfoot>
<tr>
  <td colspan='2'>
    <input type='submit' value='변경'><a href='delete?no=${board.no}'>삭제</a>
  </td>
</tr>
</tfoot>
</c:if>

</table>
</form>
</c:if>

<p><a href='list'>목록</a></p>
</body>
</html>