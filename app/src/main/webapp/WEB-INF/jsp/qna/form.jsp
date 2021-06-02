<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

<style>

.content1 {
  width: 1283px;
  height: 1199px;
  margin: 48px 318px 0 319px;
  padding: 23px 29px 28px 28px;
  border-radius: 20px;
  background-color: #f8f8f8;
  position: absolute;
  top: 121px;
  left: 319px; 
}

.btn-primary {
  width: 94px;
  height: 39px;
  margin: 0 0 20px 159px;
  padding: 7px 29px 11px 33px;
  border-radius: 10px;
  background-color: #4d90eb;
  position: absolute;
  left: 933px;
  
}

.title {
  margin: 1px 54px 26px 0;
  font-family: AppleSDGothicNeoB00;
  font-size: 24px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.33;
  letter-spacing: normal;
  text-align: left;
  color: #20273b;
  position: absolute;
  left: 28px;
  top: 24px;
}

</style>

<head>
    <meta charset="UTF-8">
 
</head>
<body>
    <div class="content1">
        <div class="title">
        QnA
        </div>
        <form action="add" method="post">
        <button type="submit" onclick="../qna/add" class="btn btn-primary">등록</button>
        </form>
        </div>
    </div>
<form action="add" method="post">
    제목: <input type="text" name="title"><br>
    내용: <textarea name="content" rows="10" cols="60"></textarea><br>
    <input type="submit" value="등록">
</form>
<p><a href='list'>목록</a></p>
</body>
</html>