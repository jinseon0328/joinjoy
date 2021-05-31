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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<style>
.QnA {
  height: 32px;
  margin: 44px 69px 32px 318px;
  font-family: AppleSDGothicNeoB00;
  font-size: 24px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.33;
  letter-spacing: normal;
  text-align: left;
  color: #20273b;
}
 .black {
  width: 1920px;
  height: 73px;
  margin: 0 0 44px;
  padding: 16px 100px 15px 83px;
  background-color: #20273b;
}


.btn-primary {
    width: 80px;
    height: 40px;
    margin: 0 0 2px 235px;
    padding: 8px 15px 11px;
    border-radius: 10px;
    background-color:#4d90eb;
    border-color:#4d90eb;
    position:absolute;
    right:0px;
}
.btn-primary:

</style>
</div>
    <div class="black"><button type="button" class="btn btn-primary btn-sm">logout</button></div>
    <title>QnA 리스트</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">JoinJoy</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav" padding-top: .9rem; padding-bottom: .9rem;>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Features</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Pricing</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>
             <li class="nav-item">
        <button type="button" class="btn btn-primary btn-sm">logout</button>
        </li>
      </ul>
    </div>
  </div>
</nav>
<header>
<div class="joinjoy"></div>

</header>

<h1 class="QnA">QnA 리스트</h1>
<p><a href='form'>QnA 작성</a></p>
<form action='list' method='post'>
<input type='hidden' name='keyword' value='${loginUser.no}'>
    <button type="button" class="btn btn-secondary btn-sm">내 글 보기</button>
</form>
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
</body>
</html>