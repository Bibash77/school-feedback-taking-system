<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="SITE_URL" value="${pageContext.request.contextPath}"/>
<jsp:include page="header.jsp"/>
<html>
<head>
    <title>Test</title>
    <style>
        body {
            margin: 0;
            color: #6a6f8c;
            background: #c8c8c8;
            font: 600 16px/18px 'Open Sans', sans-serif
        }

        .login-box {
            width: 100%;
            margin: auto;
            max-width: 525px;
            min-height: 670px;
            position: relative;
            background: url(https://images.unsplash.com/photo-1507208773393-40d9fc670acf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1268&q=80) no-repeat center;
            box-shadow: 0 12px 15px 0 rgba(0, 0, 0, .24), 0 17px 50px 0 rgba(0, 0, 0, .19)
        }

        .login-snip {
            width: 100%;
            height: 100%;
            position: absolute;
            padding: 90px 70px 50px 70px;
            background: rgba(0, 77, 77, .9)
        }

        .login-snip .login,
        .login-snip .sign-up-form {
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            position: absolute;
            transform: rotateY(180deg);
            backface-visibility: hidden;
            transition: all .4s linear
        }

        .login-snip .sign-in,
        .login-snip .sign-up,
        .login-space .group .check {
            display: none
        }

        .login-snip .tab,
        .login-space .group .label,
        .login-space .group .button {
            text-transform: uppercase;
            cursor: pointer;
        }

        .login-snip .tab {
            font-size: 22px;
            margin-right: 15px;
            padding-bottom: 5px;
            margin: 0 15px 10px 0;
            display: inline-block;
            border-bottom: 2px solid transparent
        }

        .login-snip .sign-in:checked + .tab,
        .login-snip .sign-up:checked + .tab {
            color: #fff;
            border-color: #1161ee
        }

        .login-space {
            min-height: 345px;
            position: relative;
            perspective: 1000px;
            transform-style: preserve-3d
        }

        .login-space .group {
            margin-bottom: 15px
        }

        .login-space .group .label,
        .login-space .group .input,
        .login-space .group .button {
            width: 100%;
            color: #fff;
            display: block
        }

        .login-space .group .input,
        .login-space .group .button {
            border: none;
            padding: 15px 20px;
            border-radius: 25px;
            background: rgba(255, 255, 255, .1)
        }

        .login-space .group input[data-type="password"] {
            text-security: circle;
            -webkit-text-security: circle
        }

        .login-space .group .label {
            color: #aaa;
            font-size: 12px
        }

        .login-space .group .button {
            background-image: linear-gradient(to bottom right, orangered, #fff);
        }

        .login-space .group label .icon {
            width: 15px;
            height: 15px;
            border-radius: 2px;
            position: relative;
            display: inline-block;
            background: rgba(255, 255, 255, .1)
        }

        .login-space .group label .icon:before,
        .login-space .group label .icon:after {
            content: '';
            width: 10px;
            height: 2px;
            background: #fff;
            position: absolute;
            transition: all .2s ease-in-out 0s
        }

        .login-space .group label .icon:before {
            left: 3px;
            width: 5px;
            bottom: 6px;
            transform: scale(0) rotate(0)
        }

        .login-space .group label .icon:after {
            top: 6px;
            right: 0;
            transform: scale(0) rotate(0)
        }

        .login-space .group .check:checked + label {
            color: #fff
        }

        .login-space .group .check:checked + label .icon {
            background-image: linear-gradient(to bottom right, orangered, #fff);
        }

        .login-space .group .check:checked + label .icon:before {
            transform: scale(1) rotate(45deg)
        }

        .login-space .group .check:checked + label .icon:after {
            transform: scale(1) rotate(-45deg)
        }

        .login-snip .sign-in:checked + .tab + .sign-up + .tab + .login-space .login {
            transform: rotate(0)
        }

        .login-snip .sign-up:checked + .tab + .login-space .sign-up-form {
            transform: rotate(0)
        }

        *,
        :after,
        :before {
            box-sizing: border-box
        }

        .clearfix:after,
        .clearfix:before {
            content: '';
            display: table
        }

        .clearfix:after {
            clear: both;
            display: block
        }

        a {
            color: inherit;
            text-decoration: none
        }

        .hr {
            height: 2px;
            margin: 60px 0 50px 0;
            background: rgba(255, 255, 255, .2)
        }

        .foot {
            text-align: center
        }

        .card {
            width: 500px;
            left: 100px
        }

        ::placeholder {
            color: #b3b3b3
        }
    </style>
</head>
<body class="background">
<div class="row">
    <div class="col-md-6 mx-auto p-0">
        <div class="card" style="    margin-left: 100px; margin-top: 50px">
            <div class="login-box">
                <div class="login-snip"><input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
                        for="tab-1" class="tab">Login</label> <input id="tab-2" type="radio" name="tab" class="sign-up"><label
                        for="tab-2" class="tab">Sign Up</label>
                    <div class="login-space">
                        <form class="form" autocomplete="off" id="formLogin" action="<c:url value="/login" />"
                              method="POST">
                            <div class="login">
                                <div class="group"><label for="user" class="label">Username</label> <input id="user"
                                                                                                           type="text"
                                                                                                           class="input"
                                                                                                           name="username"
                                                                                                           placeholder="Enter your username">
                                </div>
                                <div class="group"><label for="pass" class="label">Password</label> <input id="pass"
                                                                                                           type="password"
                                                                                                           class="input"
                                                                                                           name="password"
                                                                                                           data-type="password"
                                                                                                           placeholder="Enter your password">
                                </div>
                                <div class="group"><input type="submit" class="button" value="Sign In"></div>
                                <div class="hr"></div>
                            </div>
                        </form>
                        <form name="registerForm" id="registerForm">
                            <div class="sign-up-form">
                                <div class="group"><label for="user" class="label">Username</label> <input id="user"
                                                                                                           type="text"
                                                                                                           name="userName"
                                                                                                           class="input"
                                                                                                           placeholder="Create your Username">
                                </div>
                                <div class="group"><label for="pass" class="label">Password</label> <input id="pass"
                                                                                                           type="password"
                                                                                                           name="password"
                                                                                                           class="input"
                                                                                                           data-type="password"
                                                                                                           placeholder="Create your password">
                                </div>
                                <div class="group"><label for="pass" class="label">Email Address</label> <input
                                        id="pass"
                                        type="text"
                                        name="email"
                                        class="input"
                                        placeholder="Enter your email address">
                                </div>

                                <div class="group"><label for="pass" class="label">Address</label> <input id="address"
                                                                                                          type="text"
                                                                                                          name="address"
                                                                                                          class="input"
                                                                                                          placeholder="Enter your address">
                                </div>
                                <div class="group"><label for="pass" class="label">Contact no</label> <input
                                        id="phoneNumber"
                                        type="text"
                                        name="phoneNumber"
                                        class="input"
                                        placeholder="Enter your phone no">
                                </div>
                                <div class="group"><input class="button" value="Sign Up" style="text-align: center;"
                                                          onclick="registerUser()"></div>
                                <div class="hr"></div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    function registerUser() {
        let user = {};
        let valid = true;
        const userData = $('#registerForm').serializeArray(); // return array of form data
        userData.forEach(data => {
            user[data.name] = data.value;
            if (data.value == null || data.value == '') {
                valid = false;
            }
        });
        if (!valid) {
            alert("please fill all data");
            return;
        }
        console.log(user);
        $.ajax({
            url: "${pageContext.request.contextPath}/user/register",
            type: "post",
            contentType: "application/json",
            data: JSON.stringify(user),
            success: function (data) {
                alert(data);
                console.log(data);
                window.location.href = "/index";
            },
            error: function(data) {
                alert(data);
            }

            });
    }
</script>
</html>
<jsp:include page="footer.jsp"/>
