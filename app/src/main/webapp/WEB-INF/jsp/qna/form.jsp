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

#title {
  width: 1226px;
  height: 59px;
  margin: 20px 0 30px;
  padding: 11px 979px 16px 19px;
  border-radius: 10px;
  border: solid 1px #d3d3d3;
  background-color: #f4f4f4;
  position: absolute;
  left: 28px;
  top: 82px;;
}

.photo1 {
  width: 214px;
  height: 134px;
  margin: 30px 39px 30px 0;
  padding: 49px 88px 48px 89px;
  border-radius: 10px;
  border: solid 1px #d3d3d3;
  background-color: #f4f4f4;
  position: absolute;
  left: 28px;
  top: 171px;;
}

.photo2 {
  width: 214px;
  height: 134px;
  margin: 30px 39px 30px 0;
  padding: 49px 88px 48px 89px;
  border-radius: 10px;
  border: solid 1px #d3d3d3;
  background-color: #f4f4f4;
  position: absolute;
  top: 171px;
  left: 281px;
}

.photo3 {
  width: 214px;
  height: 134px;
  margin: 30px 39px 30px 0;
  padding: 49px 88px 48px 89px;
  border-radius: 10px;
  border: solid 1px #d3d3d3;
  background-color: #f4f4f4;
  position: absolute;
  top: 171px;
  left: 534px;
}

.photo4 {
  width: 214px;
  height: 134px;
  margin: 30px 39px 30px 0;
  padding: 49px 88px 48px 89px;
  border-radius: 10px;
  border: solid 1px #d3d3d3;
  background-color: #f4f4f4;
  position: absolute;
  top: 171px;
  left: 787px;
}

.photo5 {
  width: 214px;
  height: 134px;
  margin: 30px 39px 30px 0;
  padding: 49px 88px 48px 89px;
  border-radius: 10px;
  border: solid 1px #d3d3d3;
  background-color: #f4f4f4;
  position: absolute;
  top: 171px;
  left: 1040px;
}

#content {
  width: 1226px;
  height: 836px;
  margin: 30px 0 0;
  padding: 12px 12px 12px 12px;
  border-radius: 10px;
  border: solid 1px #d3d3d3;
  background-color: #f4f4f4;
  position: absolute;
  top: 335px;
  left: 28px;
}

.plus {
  width: 37px;
  height: 37px;
  background-color: rgba(0, 0, 0, 0.2);
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
        <button type="submit" class="btn btn-primary">등록</button>
           <div class="form-group">
            <input type="text" id="title" name="title" class="form-control" placeholder="제목을 입력하세요.">
           </div>
            <div class="form-group">
            <textarea class="form-control"  id="content" name="content" placeholder="내용을 입력하세요."></textarea>
            </div>
        
        <div class="photo1">
            <div class="plus1">
            </div>
        </div>
        <div class="photo2">
        </div>
        <div class="photo3">
        </div>
        <div class="photo4">
        </div>
        <div class="photo5">
        </div>
        <div class="add3">
        </div>

</form>
</body>
</html>