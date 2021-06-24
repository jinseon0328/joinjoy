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
</head>

<header>
    <div class="black">
        <div class="logo-box">
            <img src="../images/joinjoylogo-wh.png" alt="logo" class="logo">
        </div>
        <div class="hotplace-box">
            <img src="../images/hotplace-wh.png" alt="hotplace" class="hotplace">
        </div>
        <div class="community-box">
            <img src="../images/community-wh.png" alt="community" class="community">
        </div>
        <div class="discount-box">
            <img src="../images/discount-wh.png" alt="discount" class="discount">
        </div>
        <div class="qna-box">
            <img src="../images/qna-wh.png" alt="qna" class="qna">
        </div>
        <div class="faq-box">
            <img src="../images/faq-wh.png" alt="faq" class="faq">
        </div>

        <button type="button" class="btn btn-primary btn-sm">logout</button>
    </div>


</header>