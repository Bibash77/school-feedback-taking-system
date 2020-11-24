<jsp:include page="header.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Feedback</title>
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

        #customers tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #customers tr:hover {
            background-color: #ddd;
        }

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
<input value="${user.id}" id="userId" hidden>
<div id="all" style="margin-top: 100px;width: 1500px;
    margin-left: 100px;">
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow-lg p-3">
                <div class="card-title">
                    <h6 class="text-center">User Detail</h6>
                </div>
                <div class="card-body">
                    <table class="styled-table" id="customers">
                        <thead>
                        <tr>
                            <th colspan="2"></th>

                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><strong>User Name</strong></td>
                            <td>${user.userName}</td>
                        </tr>
                        <tr>
                            <td><strong>Email</strong></td>
                            <td>${user.email}</td>
                        </tr>
                        <tr>
                            <td><strong>Contact</strong></td>
                            <td>${user.phoneNumber}</td>
                        </tr>
                        <tr>
                            <td><strong>Address</strong></td>
                            <td>${user.address}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <c:if test="${user.questionAnswer ne null}">
            <div class="col-md-12" style="margin-top: 100px;">
                <div class="card shadow  p-3">
                    <div class="card-title">
                        <h6 class="text-center">User Answers</h6>
                    </div>
                    <div class="body">

                        <table class="styled-table" id="customers">
                            <tr>
                                <th>#</th>
                                <th>Question</th>
                                <th>Given Answer</th>
                            </tr>
                            <tr>
                                <td>Qno.1</td>
                                <td><p class="c-margin"> Did you find the correct choice with the help of this app?</p>
                                </td>
                                <td>${correctAnswers.choice}</td>
                            </tr>
                            <tr>
                                <td>Qno.2</td>
                                <td><p class="c-margin"> On the scale of 1 to 5. Rate the variety of choices provided by
                                    the system.</p></td>
                                <td>${correctAnswers.rate}</td>
                            </tr>
                            <tr>
                                <td>Qno.3</td>
                                <td><p class="c-margin">Rate the smoothness of school on the scale of 1 to 5</p></td>
                                <td>${correctAnswers.smoothness}</td>
                            </tr>
                            <tr>
                                <td>Qno.4</td>
                                <td><p class="c-margin"> Which of the following best describes the area of the school
                                    you preferred?</p></td>
                                <td>${correctAnswers.area}</td>
                            </tr>
                            <tr>
                                <td>Qno.5</td>
                                <td><p class="c-margin">How strongly are you satisfied with the rating of school
                                    provided by the system (1-5)</p></td>
                                <td>${correctAnswers.satified}</td>
                            </tr>
                            <tr>
                                <td>Qno.6</td>
                                <td><p class="c-margin">I would imagine that most people would learn to use this system
                                    very quickly</p></td>
                                <td>${correctAnswers.learn}</td>
                            </tr>
                            <tr>
                                <td>Qno.7</td>
                                <td><p class="c-margin"> Was the system user friendly?</p></td>
                                <td>${correctAnswers.friendly}</td>
                            </tr>
                            <tr>
                                <td>Qno.8</td>
                                <td><p class="c-margin">
                                    The interface of the system was pleasant. scale (1-5)</p></td>
                                <td>${correctAnswers['interface']}</td>
                            </tr>
                            <tr>
                                <td>Qno.9</td>
                                <td><p class="c-margin">How system relevant do you find the accuracy of School's
                                    Detail.</p></td>
                                <td>${correctAnswers.accurate}</td>
                            </tr>
                            <tr>
                                <td>Qno.10</td>
                                <td><p class="c-margin">Would you recommend the School's Information Collection centre
                                    to other guardians?</p>
                                </td>
                                <td>${correctAnswers.recommand}</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </c:if>
        <c:if test="${user.questionAnswer ne null}">
            <div class="col-md-12" style="margin-top: 100px;">
                <div class="card shadow  p-3">
                    <div class="card-title">
                        <h6 class="text-center">Comments </h6>
                    </div>
                    <div class="body">
                        <table class="styled-table table text-center">
                            <tr>
                                <td><strong>11. How do you get to know about School's information collection centre?
                                </strong></td>
                            </tr>
                            <tr>
                            <td>${correctAnswers.information}</td>
                            </tr>
                            <tr>
                                <td><strong>12. Would you drop some suggestion to grow us stronger?</strong></td>
                            </tr>
                            <tr>
                               <td>${correctAnswers.suggestion}</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </c:if>
    </div>
</div>
</body>
<script>
</script>
<script>
    // select value if exam is already taken
    $(document).ready(function () {
        const userId = document.getElementById("userId").value;
        $.ajax({
            url: "${pageContext.request.contextPath}/feedback/" + userId,
            type: "get",
            contentType: "application/json",
            success: function (data) {
                console.log(data);
                if (data == null) {
                    alert("no previous exam taken !!");

                } else {
                    const answers = JSON.parse(data);
                    Object.keys(answers).forEach(dataKey => {
                        const ele = document.getElementsByName(dataKey);
                        for (let i = 0; i < ele.length; i++) {
                            if (ele[i].value <= answers[dataKey])
                                ele[i].checked = true;
                        }
                    });
                    $("#all :input").attr("disabled", true);
                }
            },

        });


        $('input[type="checkbox"]').click(function () {
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
    })
</script>
</html>
<jsp:include page="footer.jsp"/>
