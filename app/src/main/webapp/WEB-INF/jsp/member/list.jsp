<%@ page
        language="java"
        contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"
        trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>회원</title>
</head>
<body>
<h1>관리자만 볼 수 있는 회원리스트(나중에 프론트엔드 작업후 버튼은 다 분할할 예정입니다.)</h1>
<!-- <p><a href='add'>새 회원</a></p> -->
<p><a href='login'>로그인</a></p>
<p><a href='logout'>로그아웃</a></p>
<p><a href='addd'>회원가입</a></p>
<table border='1'>
  <thead>
  <tr>
    <th>번호</th> <th>이름</th> <th>이메일</th>
    <th>생년월일</th> <th>전화번호</th><th>성별</th>
    <th>사진</th>
  </tr>
  </thead>
  <tbody>

  <c:forEach items="${list}" var="m">
    <c:if test="${not empty m.photo}">
      <c:set var="photoUrl">../../upload/${m.photo}_30x30.jpg</c:set>
    </c:if>
    <c:if test="${empty m.photo}">
      <c:set var="photoUrl">../../images/person_30x30.jpg</c:set>
    </c:if>
    <tr>
      <td>${m.no}</td>
      <td><a href='detail?no=${m.no}'>${m.name}</a></td>
      <td>${m.email}</td>
      <td>${m.birth}</td>
      <td>${m.tel}</td>
      <td>${m.gender}</td>
      <td><img src='${photoUrl}'></td>
    </tr>
  </c:forEach>

  </tbody>
</table>

<form action='list' method='get'>
  <input type='search' name='keyword' value='${param.keyword}'>
  <button>검색</button>
</form>
</body>
</html>