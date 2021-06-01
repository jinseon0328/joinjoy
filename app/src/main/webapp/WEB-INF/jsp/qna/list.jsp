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

button.btn.btn-primary.btn-sm {
    position: fixed;
    top: 16px;
    left: 1740px;
}

.btn-primary {
    width: 80px;
    height: 40px;
    padding: 8px 15px 11px;
    border-radius: 10px;
    background-color:#4d90eb;
    border-color:#4d90eb;
}


.logo-box {
    position: fixed;
    top:20.3px;
    left: 83px;
}
 
.logo {
    width: 150px;
    height: 38px;
}

.hotplace-box {
    position: fixed;
    top:24px;
    left: 883px;
}
 
.hotplace {
    width: 80px;
    height: 21px;
}

.community-box {
    position: fixed;
    top:24px;
    left: 1037px;
}
 
.community {
    width: 64px;
    height: 21px;
}

.discount-box {
    position: fixed;
    top:24px;
    left: 1177px;
}
 
.discount {
    width: 64px;
    height: 21px;
}

.qna-box {
    position: fixed;
    top:24px;
    left: 1317px;
}
 
.qna {
    width: 64px;
    height: 21px;
}

.faq-box {
    position: fixed;
    top:24px;
    left: 1457px;
}
 
.faq {
    width: 29px;
    height: 21px;
}

</style>
</head>

<header>
    <div class="black"> 
            <div class="logo-box">
            <a href="location.href='../main'"><img src="../../images/joinjoylogo-bl.png" alt="logo"  class="logo"></a>
            </div>
            <div class="hotplace-box">
            <a href="location.href='../hotplace/list'"><img src="../../images/hotplace-bl.png" alt="hotplace"  class="hotplace">
            </div>
            <div class="community-box">
            <a href="location.href='../community/list'"><img src="../../images/community-bl.png" alt="community"  class="community">
            </div>
            <div class="discount-box">
            <a href="location.href='../discount/list'"><img src="../../images/discount-bl.png" alt="discount"  class="discount">
            </div>
            <div class="qna-box">
            <a href="../list"><img src="../../images/qna-bl.png" alt="qna"  class="qna">
            </div>
            <div class="faq-box">
            <a href="location.href='../faq/list'"><img src="../../images/faq-bl.png" alt="faq"  class="faq">
            </div>
            
      <button type="button" class="btn btn-primary btn-sm">logout</button>
      </div>
    

</header>
<title>QnA 리스트</title>
<h1 class="QnA">QnA 리스트</h1>
<p><a href='form'>QnA 작성</a></p>
<form action='list' method='post'>
<input type='text' name='keyword' value='${loginUser.no}'>
    <button type="button" class="btn btn-secondary">내 글 보기</button>
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