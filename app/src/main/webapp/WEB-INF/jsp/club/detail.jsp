<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>클럽 상세</title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../../css/header_bl2.css" type="text/css">
</head>
<header>
    <button type="button" class="logo-box" onclick="location.href='../club/main'"><img
            src="../../images/joinjoylogo-bl.png"></button>
    <button type="button" class="hotplace-box" onclick="location.href='../hotplace/list'"><img
            src="../../images/hotplace-bl.png"></button>
    <div class="dropdown">
        <button class="dropbtn"><img src="../../images/community-bl.png"></button>
        <div class="dropdown-content">
            <a href="../board/list?boardtype=1">꿀팁게시판</a>
            <a href="../board/list?boardtype=2">자유게시판</a>
            <a href="../board/list?boardtype=3">세컨핸즈샵</a>
            <a href="../club/reportList">신고게시판</a>
        </div>
    </div>
    <button type="button" class="discount-box" onclick="location.href='../discount/list'"><img
            src="../../images/discount-bl.png"></button>
    <button type="button" class="qna-box" onclick="location.href='../qna/list'"><img src="../../images/qna-bl.png">
    </button>
    <button type="button" class="faq-box" onclick="location.href='../faq/list'"><img src="../../images/faq-bl.png">
    </button>

    <c:choose>
        <c:when test="${empty loginUser}">
            <button type="button" class="btn-outline-primary" onclick="location.href='../member/addd'">Sign up</button>
            <button type="button" class="btn btn-primary btn-sm" onclick="location.href='../login'">Login</button>
        </c:when>
        <c:otherwise>
            <button type="button" class="btn-outline-primary" onclick="location.href='../member/detail'">My page
            </button>
            <button type="button" class="btn btn-primary btn-sm" onclick="location.href='../logout'">Logout</button>
        </c:otherwise>
    </c:choose>
</header>

<style>
    .bttmBox {
        width: 1283px;
        height: 685px;
        padding: 25px 20px 15px 40px;
        border-radius: 20px;
        background-color: #ffffff;
    }

    .btn-primary1 {
        width: 80px;
        height: 40px;
        border-radius: 10px;
        background-color: #4d90eb;
        position: absolute;
        right: 20%;
        color: #fff;
        top: 70%;
    }

    .btn-outline-primary1 {
        width: 80px;
        height: 40px;
        color: #4d90eb;
        object-fit: contain;
        border-radius: 10px;
        border: solid 2px #4d90eb;
        position: absolute;
        right: 25%;
        top: 84.5%;
    }

</style>

<body>
<div style="background-color: #20273b;
   position:absolute;
   width: 66.82%;
   height: 22.22%;
   left: 16.61%;
   top: 11%;
   border-radius: 20px;">
    <div class="form-check" style="position: absolute; left: 3.12%; top: 16.67%;">
        <input class="form-check-input" type="radio" name="select" id="selectjoin"
               OnClick="window.location.href='list';" checked>
        <label class="form-check-label" for="selectjoin" style="color: #fff;">
            참여
        </label>
    </div>
    <div class="form-check" style="position: absolute; left: 11.85%; top: 16.67%;">
        <input class="form-check-input" type="radio" name="select" id="selectadd" OnClick="window.location.href='add';">
        <label class="form-check-label" for="selectadd" style="color: #fff;">
            생성
        </label>
    </div>


    <form action='list' method='get'>
        <fieldset style="position: absolute; width: 90%; top: 40%; left: 3.35%; color:#fff;">
            <table>
                <thead style="font-size: 0.75em; background-color: #20273b;">
                <tr>
                    <th>도착지</th>
                    <th>가는날</th>
                    <th>오는날</th>
                    <th>테마</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><input type='search' name='arrive' value='${param.arrive}'
                               style="border: none; width: 254px; height: 54px; border-top-left-radius: 10px; border-bottom-left-radius: 10px; border-color: #fff;">
                    </td>
                    <td><input type='date' name='startDate' value='${param.startDate}'
                               style="border: none; width: 254px; height: 54px; border-color: #fff;"></td>
                    <td><input type='date' name='endDate' value='${param.endDate}'
                               style="border: none; width: 254px; height: 54px; border-color: #fff;"></td>
                    <td><select name="theme" id="theme"
                                style="border: none; width: 254px; height: 54px; border-bottom-right-radius: 10px; border-top-right-radius: 10px; border-color: #fff;">
                        <option value=''></option>
                        <option value='불멍때리기'>불멍때리기</option>
                        <option value='고기파티'>고기파티</option>
                        <option value='낚시'>낚시</option>
                        <option value='일상탈출'>일상탈출</option>
                        <option value='글램핑'>글램핑</option>
                        <option value='캠핑'>캠핑</option>
                        <option value='별보기'>별보기</option>
                    </td>
                    <td></td>
                    <td>
                        <button style="left: 20%; width: 163px; height: 54px; border-radius: 10px; background-color: #4d90eb; color: #fff; border: 0;">
                            Search
                        </button>
                    </td>
                </tr>
                </tbody>
            </table>
        </fieldset>
    </form>
</div>

<div style=" width: 1283px;
        height: 550px;
           position:absolute;
        margin-left: 10%;
        padding: 10px 20px 15px 40px;
        border-radius: 20px;
        left: 16.61%;
        top: 35%;
        background-color: #f8f8f8;">

    <c:if test="${not empty club}">

            <!--클럽참여 관련-->
            <div style="position: absolute; right:  3%; top: 5%;">
            <c:set var="exist" value="${false}"/>
            <c:if test="${club.total != club.nowTotal}">
                <c:forEach items="${clubMembers}" var="cm">
                    <c:if test="${loginUser.no == cm.no}">
                        <button type="button" class="btn btn-secondary" disabled>클럽 참여중</button>
                        <c:set var="exist" value="${true}"/>
                    </c:if>
                </c:forEach>
            </c:if>
            </div>

            <div style="position: absolute; right:  3%; top: 5%;">
            <c:if test="${club.total == club.nowTotal and loginUser.no == club.writer.no}">
                <button type="button" class="btn btn-secondary" disabled>클럽 참여불가</button>
            </c:if>
            </div>

            <div style="position: absolute; right: 3%; top: 5%;">
            <c:if test="${!exist and not empty loginUser and loginUser.no != club.writer.no and club.total > club.nowTotal}">
                <form action="join" method="post">
                    <input type="text" name="no" value="${club.no}" hidden>
                    <input type="text" name="loginUser" value="${loginUser.no}" hidden>
                    <input class="btn btn-primary" type="submit" value="클럽 참여" onclick="result1()">
                </form>
            </c:if>
                </div>

            <!--클럽신고 관련-->
            <div style="position: absolute; right: 13%; top: 5%;">
            <c:set var="existreports" value="${false}"/>
            <c:forEach items="${reports}" var="rs">
                <c:if test="${rs.no == club.no}">
                    <span class="badge bg-danger">신고된 글</span>
                    <c:set var="existreports" value="${true}"/>
                </c:if>
            </c:forEach>
            </div>

            <div style="position: absolute; right: 13%; top: 5%;">
            <c:forEach items="${clubMembers}" var="cm">
                <c:if test="${not empty loginUser and !existreports and loginUser.no != club.writer.no and loginUser.no == cm.no}">
                    <form action="report1" method="post">
                        <input type="text" name="no" value="${club.no}" hidden>
                        <input type="text" name="clubWriterNo" value="${club.writer.no}" hidden>
                        <button type="submit" class="btn btn-danger">클럽 신고</button>
                    </form>
                </c:if>
            </c:forEach>
                </div>
        <div style="position: absolute; left: 2%; top: 5%;">

            <form action='update' method='post'>
                [${club.no}]
                <!--로그인된 사람만 수정할수 있고 아닌사람은 readonly되게-->
                <c:if test="${loginUser.no == club.writer.no}">
                    <input type='text' name='no' value='${club.no}' hidden>
                    <input type='text' name='title' value='${club.title}'><br>
                    <textarea name='content' rows='3' cols='100'>${club.content}</textarea><br>
                </c:if>

                <c:if test="${loginUser.no != club.writer.no}">
                    ${club.title}<br>
                    ${club.content}<br>
                </c:if>
                <br>
                <c:if test="${not empty club.writer.photo}">
                    <c:set var="photoUrl">../../upload/${cm.photo}_30x30.jpg</c:set>
                </c:if>
                <c:if test="${empty club.writer.photo}">
                    <c:set var="photoUrl">../../images/person_30x30.jpg</c:set>
                </c:if>

                <img src='${photoUrl}' class="circle">

                <span style="font-size: 13px">호스트: ${club.writer.name} 님</span>

                <c:if test="${not empty loginUser and loginUser.no == club.writer.no or loginUser.power == 1 }">
                            <input type='submit' class=" btn btn-outline-primary" value='변경' style="top: 140%; left: 110%">
                </c:if>

                <c:if test="${not empty loginUser and loginUser.no == club.writer.no or loginUser.power == 1 }">
                <div style="position: absolute; right: -35%; top: 140%;">
                <input onclick="del()" class="btn btn-primary" value="삭제">
                </div>
                </c:if>
            </form>

                <div style="display: inline">
                <jsp:include page="/jsp/club/member_list.jsp"/><!--멤버-->
                </div>

                <br>
                    도착지: <input type='text' name='arrive' value='${club.arrive}' disabled
                                style="border: #f8f8f8; width: 100px;">
                    가는날: <input type='date' name='startDate' value='${club.startDate}' disabled style="border: #f8f8f8;">
                    오는날: <input type='date' name='endDate' value='${club.endDate}' disabled style="border: #f8f8f8;">
                    테마: <input name='theme' id="themeid" value='${club.theme}' disabled style="border: #f8f8f8;">
                    인원: ${club.nowTotal} / ${club.total}<br>

                    <c:if test="${not empty club.photos}">
                        <c:forEach items="${club.photos}" var="p">
                            <c:set var="photo254x178Url">../../upload/${p.name}_254x178.jpg</c:set>
                            <img src='${photo254x178Url}'>
                        </c:forEach>
                    </c:if>

        </div>
    </c:if>
    <script>

    function del() {
        if (confirm("정말 삭제하시겠습니까?") == true) {    //확인
            onclick(window.location.href = 'delete?no=${club.no}')
        } else {   //취소
            return false;
        }
    }

    function result1() {
        alert("클럽참여 완료");
    }

    function result2() {
        alert("클럽탈퇴 완료");
    }

    function result3() {
        alert("클럽강퇴 완료");
    }

    </script>
</div>
</body>
</html>