<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<style>
  .dropbtn {
    background-color: #fff;
    color: #a3a3a3;
    padding: 16px;
    font-size: 16px;
    border: none;
  }

  .dropdown {
    position: relative;
    display: inline-block;
  }

  .dropdown-content {
    display: none;
    position: absolute;
    background-color: #fff;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    border-radius: 5px;
  }

  .dropdown-content a {
    color: #a3a3a3;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
  }

  .dropdown-content a:hover {background-color: #ddd;}

  .dropdown:hover .dropdown-content {display: block;}

  .dropdown:hover .dropbtn {background-color: #fff;}

  .white {
    width: 1920px;
    height: 73px;
    margin: 0 0 44px;
    padding: 16px 100px 15px 83px;
    background-color: #ffffff;
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

<button type="button" class="dropbtn" onclick="location.href='../hotplace/list'">핫플레이스</button>
<div class="dropdown">
  <button class="dropbtn">커뮤니티</button>
  <div class="dropdown-content">
    <a href="#">꿀팁게시판</a>
    <a href="#">자유게시판</a>
    <a href="#">세컨핸즈샵</a>
    <a href="#">신고게시판</a>
  </div>
</div>
<button type="button" class="dropbtn" onclick="location.href='../discount/list'">할인정보</button>
<button type="button" class="dropbtn" onclick="location.href='../qna/list'">고객센터</button>
<button type="button" class="dropbtn" onclick="location.href='../faq/list'">도움말</button>