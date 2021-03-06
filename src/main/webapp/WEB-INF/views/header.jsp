<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Albright Rising School</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <script>
        $.ajax({
            url: "${pageContext.request.contextPath}/user/all-cookies",
            type: "get",
            contentType: "application/json",
            success: function (data) {
                data.forEach(data => {
                    sessionStorage.setItem(data.name, data.value);
                })
            },

        });
    </script>
    <style>
        .background {
            background-image: linear-gradient(to bottom right, dodgerblue, #fff);
           /* background-color: dodgerblue;*/
        }

        .text-secondary {
            color: grey;
        }
        .secondary {
            background-color: #808080;
        }
        .curor {
            cursor: pointer;
        }
        .buttons {
             background-image: linear-gradient(to bottom right, dodgerblue, #fff);
        }
        .qn {
           background-image: linear-gradient( lightgoldenrodyellow , #fff);

        }

    </style>
</head>
<body>
<%--<nav class="navbar navbar-expand-md navbar-dark fixed-top" style="background-color: #808080;height: 50px" id="nav">
    <a class="navbar-brand" href="/home">Tristee Call Center</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
            aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/home">Home</a>
            </li>
        </ul>
        <form class="form-inline mt-2 mt-md-0" action="${pageContext.request.contextPath}/logout">
            <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Logout</button>
        </form>
    </div>
</nav>--%>

<!-- Navbar (sit on top) -->
<div class="w3-top" id="nav">
    <div class="w3-bar w3-blue w3-card w3-left-align w3-large" style="letter-spacing:4px;">
        <a href="/home" class="w3-bar-item w3-button w3-padding-large">Albright Rising School</a>
        <!-- Right-sided navbar links. Hide them on small screens -->
        <div class="w3-right w3-hide-small background">
            <a class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white background" id="viewExams" href="${pageContext.request.contextPath}/questionAnswer-list">View Feedbacks</a>

            <a class="w3-bar-item w3-button w3-hide-small w3-padding-large background" href="${pageContext.request.contextPath}/summary">Summary</a>

            <a class="w3-bar-item w3-button w3-hide-small w3-padding-large background" href="${pageContext.request.contextPath}/enrolled-data">Api Data</a>
            <a class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white background" id="adduser"  href="#" data-toggle="modal" data-target="#registerModal">Add Users</a>
            <a class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white background" href="${pageContext.request.contextPath}/questionAnswer" id="takeExam">Give Feedback</a>
            <a class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white background" onclick="window.location.href= '/question-answer/'+ sessionStorage.getItem('userId')" id="myexam">My Feedback</a>
            <a class="w3-bar-item w3-button w3-hide-small w3-padding-large background" href="${pageContext.request.contextPath}/logout">Logout</a>
        </div>
    </div>
</div>

</body>

<script>
    $(document).ready(function () { // when document has been fully initialize
        const userId = sessionStorage.getItem("userId");
        console.log(userId);
        if (userId == null || userId == "") {
            document.getElementById("nav").hidden = true;
        }
    });
</script>
</html>
