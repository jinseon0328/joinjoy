<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<html>
<head>
<style> 

.title1 {
  width: 120px;
  height: 32px;
  margin: 72px 75px 32px 318px;
  font-family: AppleSDGothicNeoB00;
  font-size: 24px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.33;
  letter-spacing: normal;
  text-align: left;
  color: #20273b;
  top: 145px;
  left: 318px;
  }
  .btn-primary {   
  width: 80px;
  height: 40px;
  
  padding: 8px 13px 11px 19px;
  border-radius: 10px;
  background-color: #4d90eb;
  position: absolute;
  top: 149px;
  right: 410px;
}

.btn-outline-primary {
  width: 80px;
  height: 40px;
  
  padding: 8px 12px 11px;
  object-fit: contain;
  border-radius: 10px;
  border: solid 2px #4d90eb;
  position: absolute;
  top: 149px;
  right: 320px;

}
.no1 {
  width: 20px;
  height: 17px;
  
  font-family: AppleSDGothicNeoB00;
  font-size: 13px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.31;
  letter-spacing: normal;
  text-align: left;
  color: #20273b;
  position: absolute;
  top: 209px;
  left: 359px;
  }
  .title2 {
  width: 26px;
  height: 17px;
  
  font-family: AppleSDGothicNeoB00;
  font-size: 13px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.31;
  letter-spacing: normal;
  text-align: left;
  color: #20273b;
  position: absolute;
  top: 209px;
  left: 513px;
  }
  .writer1 {
  width: 39px;
  height: 17px;
  
  font-family: AppleSDGothicNeoB00;
  font-size: 13px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.31;
  letter-spacing: normal;
  text-align: left;
  color: #20273b;
  position: absolute;
  top: 209px;
  left: 1010px;
  }

   .date1 {
  width: 39px;
  height: 17px;
  
  font-family: AppleSDGothicNeoB00;
  font-size: 13px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.31;
  letter-spacing: normal;
  text-align: left;
  color: #20273b;
  position: absolute;
  top: 209px;
  left: 1176px;
  }
  
  .background1 {
  width: 1281px;
  height: 59px;
  padding: 17px 57px 21px 40px;
  border-radius: 10px;
  background-color: #f4f4f4;
  position: absolute;
  top: 230px;
  left: 319px;
  }
  .no2 {
  width: 30px;
  height: 17px;
  
  font-family: AppleSDGothicNeoB00;
  font-size: 13px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.31;
  letter-spacing: normal;
  text-align: left;
  color: #20273b;
  position: absolute;
  top: 17px;
  left: 40px;
  }
  .title3 {
  width: 150x;
  height: 17px;
  
  font-family: AppleSDGothicNeoB00;
  font-size: 13px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.31;
  letter-spacing: normal;
  text-align: left;
  color: #20273b;
  position: absolute;
  top: 17px;
  left: 194px;
  }
  .writer2 {
  width: 100px;
  height: 17px;
  
  font-family: AppleSDGothicNeoB00;
  font-size: 13px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.31;
  letter-spacing: normal;
  text-align: left;
  color: #20273b;
  position: absolute;
  top: 17px;
  left: 691px;
  }

   .date2 {
  width: 76px;
  height: 21px;
  
  font-family: AppleSDGothicNeoB00;
  font-size: 13px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.31;
  letter-spacing: normal;
  text-align: left;
  color: #20273b;
  position: absolute;
  top: 17px;
  left: 857px;
  }
  
  .content1 {
  width: 30px;
  height: 17px;
  
  font-family: AppleSDGothicNeoB00;
  font-size: 13px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.31;
  letter-spacing: normal;
  text-align: left;
  color: #20273b;
  position: absolute;
  top: 310px;
  left: 329px;
  }

  .content2 {
  width: 1281px;
  height: 210px;
  margin: 34px 0 22px;
  padding: 10px 20px;
  border-radius: 10px;
  border: solid 1px #d3d3d3;
  background-color: #f4f4f4;
  position: absolute;
  top: 300px;
  left: 319px;
}

.btn-list-primary {
  width: 80px;
  height: 40px;
  
  padding: 8px 12px 11px;
  object-fit: contain;
  border-radius: 10px;
  border: solid 2px #4d90eb;
  position: absolute;
  top: 550px;
  right: 320px;

}
</style>
</head>
<body>

<p class="title1">QnA</p>
<c:if test="${not empty loginUser and loginUser.no == qna.writer.no or loginUser.power == 1 }">
  <form action='update' method='post'>
 
 
  

    <p class="no1">No</p>
    <p class="title2">제목</p>
    <p class="writer1">작성자</p>
    <p class="date1">등록일</p>
    
    <div class="background1">  
      <p class="no2">${qna.no}</p>
      <input type="hidden" name='no' value='${qna.no}'>
      <input class="title3" type="text" name='title' value='${qna.title}'>
      <p class="writer2">${qna.writer.name}</p>
      <p class="date2">${qna.registeredDate}</p>
    </div>
    
    <p class="content1">내용</p>
    <textarea class="content2">${qna.content}</textarea>
    <button type="submit" class="btn btn-primary">변경</button> 
    <button type="submit" onclick="delete?no=${qna.no}" class="btn btn-outline-primary">삭제</button>
    
   </form>     
   </c:if>
   <!--<c:if test="${empty loginUser and loginUser.no != qna.writer.no or loginUser.power != 1}">
    <tr>
        <td colspan='5'>해당 게시자가 아닙니다.</td>
    </tr>
  </c:if>-->
    <button type="button" class="btn btn-list-primary" onclick="location.href='list' ">목록</button>

</body>
</html>



<!--</style>
    <title class="QnA">QnA 상세</title>
    <c:if test="${not empty loginUser and loginUser.no == qna.writer.no or loginUser.power == 1 }">

</head>


<body>
<div class="content1">
    <div class="title">
    <input class="form-control" type="text" name='title' value='${qna.title}'>
    </div>
    <div>
    <form action='update' method='post'>
    <button type="submit" class="btn btn-primary">변경</button>
    <button type="submit" onclick="delete?no=${qna.no}" class="btn btn-outline-primary">삭제</button>
    </div>
    <div class="dot">
    </div>
    <div class="no">
    <input class="form-control" type="text" name='no' value='${qna.no}' readonly>
    </div>
    <div>
    <input class="form-control" type="text" name='title' value='${qna.title}' readonly>
    </div>

    <table border='1'>
        <tbody>
        <tr><th>번호</th> <td><input type='hidden' name='no' value='${qna.no}' readonly>${qna.no}</td></tr>
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
    </table>
</form>
<c:if test="${loginUser.power == 1 }">
    <form action='send' method='post'>
        <input type='hidden' name='content' value='${qna.content}' readonly>
        <input type='hidden' name='email' value='${qna.writer.email}' readonly>
        <input type='hidden' name='answer' value='${qna.answer}'>
        <input type='submit' value='답변메일 전송'>
    </form>
</c:if>
</tfoot>
</c:if>
<c:if test="${empty loginUser and loginUser.no != qna.writer.no or loginUser.power != 1}">
    <tr>
        <td colspan='5'>해당 게시자가 아닙니다.</td>
    </tr>
</c:if>


<p><a href='list'>목록</a></p>
</div>
</body>
</html>-->