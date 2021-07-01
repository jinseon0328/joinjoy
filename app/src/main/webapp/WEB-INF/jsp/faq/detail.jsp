<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<title>FAQ 상세</title>
<link rel="stylesheet" href="../../css/header_wh.css" type="text/css">

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

<p class="title1">FAQ</p>
<c:if test="${not empty loginUser and loginUser.no == qna.writer.no or loginUser.power == 1 }">
    <form action='update' method='post'>

        <p class="no1">No</p>
        <p class="title2">제목</p>
        <p class="writer1">작성자</p>
        <p class="date1">등록일</p>

        <div class="background1">
            <input class="text" type="hidden"name="no" id="no" value="${faq.no}">${faq.no}
            <input class="title3" type="text" name='title' value='${faq.title}'>
            <p class="writer2">${faq.writer.name}</p>
            <p class="date2">${faq.registeredDate}</p>
        </div>
        <p class="content1">내용</p>
        <textarea class="content2" name="content">${faq.content}</textarea>

        <c:if test="${not empty loginUser and loginUser.power == 1}">
            <tfoot>
            <tr>
                <td colspan='2'>
                    <input type='submit' value='변경'><a href='delete?no=${faq.no}'>삭제</a>
                </td>
            </tr>
            </tfoot>
        </c:if>

        <button type="submit" class="btn btn-primary">변경</button>
        <button type="submit" onclick="delete?no=${faq.no}" class="btn btn-outline-primary">삭제</button>

    </form>
</c:if>
<button type="button" class="btn btn-list-primary" onclick="location.href='list' ">목록</button>

</body>
</html>