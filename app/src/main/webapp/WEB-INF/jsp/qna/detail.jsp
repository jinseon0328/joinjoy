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

.content1 {
  width: 1283px;
  height: 1199px;
  padding: 23px 29px 28px 28px;
  border-radius: 20px;
  background-color: #f8f8f8;
  position: absolute;
  top: 121px;
  left: 319px; 
  display: flex;

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

.btn-primary {
  height: 39px;
  margin: 0 0 20px 159px;
  padding: 7px 29px 11px 33px;
  border-radius: 10px;
  background-color: #4d90eb;
  position: absolute;
  left: 933px;
  
}

.no {
  width: 24px;
  height: 24px;
  margin: 0 0 42px 26px;
  padding: 9px 1px;
  position: absolute;
  top: 80px;
  left:28px;
}

</style>
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
    <button type="submit" class="btn btn-primary">등록</button>
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
</html>