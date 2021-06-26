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
<!-- <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<title>회원가입</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

    <style>
body{
  background-color: #fff;
}
        
header{
  background-color: #20273b;
  position: fixed;
  width: 100%;
  height: 80px;
  margin: 0 0 149px;
  padding: 16px 100px 15px 83px;
  z-index: 200;
}
.dropbtn {
  background-color: #20273b;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}
.dropdown {
  position: relative;
  top: -10%;
  left:54%;
  display: inline-block;
}
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #20273b;
  min-width: 115px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  border-radius: 10px;
}
.dropdown-content a {
  color: #a3a3a3;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}
.dropdown-content a:hover {background-color: #fff;}
.dropdown:hover .dropdown-content {display: block;}
.dropdown:hover .dropbtn {background-color: #20273b;}
button.btn.btn-primary.btn-sm {
    position: absolute;
    top: 25%;
    right: 5.2%;
}
.btn-primary {
    width: 90px;
    height: 40px;
    padding: 8px 15px 11px;
    border-radius: 10px;
    background-color:#4d90eb;
    border-color:#4d90eb;
}
.logo-box {
    position: absolute;
    top:25%;
    left: 5.2%;
    background-color: #20273b;
    border: none;
}
.hotplace-box {
    position: absolute;
    top:32.8%;
    left: 46%;
    background-color: #20273b;
    border: none;
}
.discount-box {
    position: absolute;
    top:32.8%;
    left: 61.3%;
    background-color: #20273b;
    border: none;
}
.qna-box {
    position: absolute;
    top:32.8%;
    left: 68.6%;
    background-color: #20273b;
    border: none;
}
.faq-box {
    position: absolute;
    top:32.8%;
    left: 75.9%;
    background-color: #20273b;
    border: none;
}
</style>
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
         
      <button type="button" class="btn btn-primary btn-sm" onclick="location.href='../login'">logIn</button>
</header>

<body>

<div class="container">
<br>  <p class="text-center">More bootstrap 4 components on <a href="http://bootstrap-ecommerce.com/"> Bootstrap-ecommerce.com</a></p>
<hr>



<div class="row justify-content-center">
<div class="col-md-6">
<div class="card">
<br><br><br><br><br>
<header class="card-header">
  <a href="http://localhost:8080/team/app/login" class="float-right btn btn-outline-primary mt-1">Log in</a>
  <h4 class="card-title mt-2">회원가입</h4>
</header>
<article class="card-body">
<form action="add" method="post" enctype="multipart/form-data">
  <div class="form-row">
    <div class="col form-group">
      <label>이름</label>
        <input type="text" name="name" class="form-control" placeholder=" ">
    </div> <!-- form-group end.// -->
  </div> <!-- form-row end.// -->
  
  <div class="form-group">
    <label>이메일 주소</label>
    <input type="email" name="email" class="form-control" placeholder="">
    <small class="form-text text-muted">저희는 회원님의 정보를 소중하게 보관합니다</small>
  </div> <!-- form-group end.// -->
  
  <div class="form-group">
    <label>생년월일</label>
    <input type="date" name="birth" class="form-control" placeholder="">
  </div> <!-- form-group end.// -->
  
  <div class="form-group">
    <label>전화번호</label>
    <input type="tel" name="tel" class="form-control" placeholder="" minlength="11" maxlength="11">
  </div> <!-- form-group end.// -->
  
  <div class="form-group">
    <label>사진</label>
    <input type="file" name="photo" class="form-control" placeholder="">
  </div> <!-- form-group end.// -->
  
  <div class="form-group">
      <label class="form-check form-check-inline">
      <input class="form-check-input" type="radio" name="gender" value="0">
      <span class="form-check-label">남자</span>
    </label>
    <label class="form-check form-check-inline">
      <input class="form-check-input" type="radio" name="gender" value="1">
      <span class="form-check-label">여자</span>
    </label>
  </div> <!-- form-group end.// -->
  
  <div class="form-group">
    <label>비밀번호</label>
      <input class="form-control" type="password" name="password" minlength="4" maxlength="12">
  </div> <!-- form-group end.// -->  
  
    <div class="form-group">
        <button type="submit" class="btn btn-primary btn-block">가입완료</button>
    </div> <!-- form-group// -->      
    <small class="text-muted">개인정보 유출시 형사적 책임을 질 수 있습니다.</small>                                          
</form>
</article> <!-- card-body end .// -->
<div class="border-top card-body text-center">이미 가입을 하셨나요? <a href="/team/app/login">로그인</a></div>
</div> <!-- card.// -->
</div> <!-- col.//-->

</div> <!-- row.//-->


</div> 
<!--container end.//-->s

<!-- <br><br>
<article class="bg-secondary mb-3">  
<div class="card-body text-center">
    <h3 class="text-white mt-3">Bootstrap 4 UI KIT</h3>
<p class="h5 text-white">Components and templates  <br> for Ecommerce, marketplace, booking websites 
and product landing pages</p>   <br>
<p><a class="btn btn-warning" target="_blank" href="http://bootstrap-ecommerce.com/"> Bootstrap-ecommerce.com  
 <i class="fa fa-window-restore "></i></a></p>
</div>
<br><br>
</article> -->

</body>
</html>s