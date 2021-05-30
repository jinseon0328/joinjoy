<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: osk2090
  Date: 2021/05/17
  Time: 11:17 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Club List</title>
    <style>
        #background {
            background-image: url("airplane-2619434.jpg");
        }
    </style>
</head>
<body id="background">

<h1>Club List</h1>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>

<div class="form-check">
    <input class="form-check-input" type="radio" name="select" id="selectjoin" OnClick="window.location.href='list';" checked>
    <label class="form-check-label" for="selectjoin">
        참여
    </label>
</div>
<div class="form-check">
    <input class="form-check-input" type="radio" name="select" id="selectadd" OnClick="window.location.href='add';">
    <label class="form-check-label" for="selectadd">
        생성
    </label>
</div>

<p><a href='reportList'>클럽 신고게시판</a></p>

<form method='get'>
    <fieldset>
        <legend>클럽 상세 검색</legend>
        <table border='1'>
            <tbody>
            <tr>
                <th>도착지</th>
                <td><input type='search' name='arrive' value='${param.arrive}'></td>
            </tr>
            <tr>
                <th>가는날</th>
                <td><input type='date' name='startDate' value='${param.startDate}'></td>
            </tr>
            <tr>
                <th>오는날</th>
                <td><input type='date' name='endDate' value='${param.endDate}'></td>
            </tr>
            <tr>
                <th>테마</th>
                <td><select name="theme" id="theme">
                    <option value=''></option>
                    <option value='불멍때리기'>불멍때리기</option>
                    <option value='고기파티'>고기파티</option>
                    <option value='낚시'>낚시</option>
                    <option value='일상탈출'>일상탈출</option>
                    <option value='글램핑'>글램핑</option>
                    <option value='캠핑'>캠핑</option>
                    <option value='별보기'>별보기</option></td>
            </tr>
            <tr>
                <td colspan='2'>
                    <button>검색</button>
                </td>
            </tr>
            </tbody>
        </table>
    </fieldset>
</form>

<table border='1'>
    <thead>
    <tr>
        <th>번호</th>
        <th>도착지</th>
        <th>가는날</th>
        <th>오는날</th>
        <th>테마</th>
        <th>인원수</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${clubs}" var="c">
        <tr>
            <td><a href='detail?no=${c.no}'>${c.no}</a></td>
            <td>${c.arrive}</td>
            <td>${c.startDate}</td>
            <td>${c.endDate}</td>
            <td>${c.theme}</td>
            <td>${c.total}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<%--<form action='search' method='get'>--%>
<%--    <input type='text' name='keyword'>--%>
<%--    <button>검색</button>--%>
<%--</form>--%>

</body>
</html>