<jsp:include page="header.jsp"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
    <style>
        #customers {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even){background-color: #f2f2f2;}

        #customers tr:hover {background-color: #ddd;}

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: dodgerblue;
            color: white;
        }
    </style>
</head>
<body class="background">
<div class="container" style="margin-top: 100px;">
    <div class="card border-primary">
        <div class="card-title">
            <h3 class="text-center">User Feedback List</h3>
        </div>
        <div class="card-body">
            <table class="table styled-table" id="customers">
                <tr>
                    <th>SN</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Score</th>
                    <th>Score %</th>
                    <th>status</th>
                </tr>
                <c:forEach items="${users}" var="user" varStatus="loop">
<tr style="cursor: pointer;" onclick="window.location.href= '/question-answer/${user.id}'">
        <td>${loop.count}</td>
        <td>${user.userName}</td>
        <td>${user.email}</td>
        <td>${user.address}</td>
        <td>${user.questionAnswer.totalPoint}</td>
        <td>${user.questionAnswer.totalPercentage}%</td>
        <td>${user.questionAnswer.totalPercentage > 40 ? 'pass' : 'fail'}</td>

</tr>  </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
<script>
    $('input[type="radio"]').click(function () {
        console.log("trigger");
        var theNumber = $(this).attr('id').slice(-1);
        $(this).siblings('label').each(function () {
            var sibNumber = $(this).attr('for').slice(-1);
            if (sibNumber <= theNumber) {
                $(this).addClass('on');
            } else {
                $(this).removeClass('on');
            }
        });
    });
</script>
</html>
<jsp:include page="footer.jsp"/>
