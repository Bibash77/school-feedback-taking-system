<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>

<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
    body, h1, h2, h3, h4, h5, h6 {
        font-family: "Lato", sans-serif
    }

    .w3-bar, h1, button {
        font-family: "Montserrat", sans-serif
    }

    .fa-anchor, .fa-coffee {
        font-size: 200px
    }
</style>
<body class="w3-black">

<header class="w3-container background w3-center" style="padding:128px 16px">
    <h1 class="w3-margin w3-jumbo" id="wel-text">WELCOME HOME</h1>
    <p class="w3-xlarge"></p>
    <a id="takeFeedback" class="w3-button w3-black w3-padding-large w3-large w3-margin-top"
       href="${pageContext.request.contextPath}/questionAnswer" >Give Feedback</a>
</header>

<!-- First Grid -->
<div class="w3-row-padding w3-padding-64 w3-container" style="background-color: white;">
    <div class="w3-content">
        <div class="w3-twothird">
            <h1>Why ALbright Rising School?</h1>
            <h5 class="w3-padding-32">We provide our students with a holistic education in a caring, safe and supportive
                environment that fosters positive attitudes to learning, and promotes holistic development.</h5>

            <p class="w3-text-grey"><strong>ALbright Rising school</strong> is a premier education institution, which
                was
                established in 1993. It is situated at Lainchour, a strategically important location in the Kathmandu
                valley, and is one of the constituent institutions under the NIST Foundation. The school has been
                conducting Plus 2 programme (Grade 11 – 12), now Upper Secondary school classes, both in Science and
                Management for the last three decades. The school follows the national curriculum under the National
                Examination Board (NEB), Nepal, and the medium of instruction is English except for Nepali subject. The
                school management is planning to introduce other courses in Law, Arts and Humanities in Grade 11–12 in
                the near future while the ultimate goal is to provide the continuum of education from Pre–school to
                Grade 12 under the National School of Sciences within the next few years. The NIST Foundation was
                initiated by a group of scientists and academicians. The …</p>
        </div>

        <div class="w3-third w3-center">
            <i class="fa fa-anchor w3-padding-64 w3-text-blue"></i>
        </div>
    </div>
</div>

<!-- Second Grid -->
<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
    <div class="w3-content">
        <div class="w3-third w3-center">
            <i class="fa fa-coffee w3-padding-64 w3-text-blue w3-margin-right"></i>
        </div>

        <div class="w3-twothird">
            <h1>Admission guidelines</h1>
            <h5 class="w3-padding-32">
                For Ten Plus Two (Humanities, Education, Management) Programs:
                The students who have secured 1.6 GPA and above will be eligible for entrance exam in class 11 and all
                those who pass the entrance exam will be admitted.
                .</h5>

            <p class="w3-text-grey">Albright Rising School, located in Baneshowor, Kathmandu, is
                an English and Nepali medium co-educational academic institution. The school has been running programs
                from Montessori level to grade 10 along with +2 programs in Management, Humanities, Education which is
                affiliated to National Examination Board.

                The motto of Albright Rising School is “ Darkness onto Light.” The primary aim of the
                school is to prepare higher, middle and junior level human resource to meet the needs of business
                industry, schools, academic sectors, social works, volunteer works as well as government in different
                functional areas of management, humanities and education.</p>
        </div>
    </div>
</div>

<div class="w3-container w3-black w3-center w3-opacity w3-padding-64">
    <h1 class="w3-margin w3-xlarge">“Serving from Darkness onto Light.”</h1>
</div>
</body>
</html>
<script>
    $(document).ready(function () {
        const username = sessionStorage.getItem('username');
        document.getElementById("wel-text").innerText = "WELCOME HOME "+ username.toUpperCase();
    });
</script>

<jsp:include page="footer.jsp"/>
