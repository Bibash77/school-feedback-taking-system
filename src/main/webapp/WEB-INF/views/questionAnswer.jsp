<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>
<html>
<head>
    <title>FeedBack</title>
</head>
<style>
    /*label:before {*/
    /*    content: '☆';*/
    /*    color: white;*/
    /*    font-size: 2em;*/
    /*}*/
    /*label.on:before {*/
    /*    content: '★';*/
    /*    color: #eaea05;*/
    /*    !* uncomment for iOS *!*/
    /*    !*   font-size: 2.4em;*/
    /*      top: -0.1em;*/
    /*      left: -0.1em; *!*/
    /*}*/
    /*input:checked + label:before {*/
    /*    content: '★';*/
    /*    color: #eaea05;*/
    /*    !* uncomment for iOS *!*/
    /*    !*   font-size: 2.4em;*/
    /*      top: -0.1em;*/
    /*      left: -0.1em; *!*/
    /*}*/
    /*label {*/
    /*    display: inline-block;*/
    /*    cursor: pointer;*/
    /*    position: relative;*/
    /*    padding-left: 25px;*/
    /*    margin-right: 15px;*/
    /*    font-size: 20px;*/
    /*}*/
    /*label:before {*/
    /*    display: inline-block;*/
    /*    width: 20px;*/
    /*    height: 20px;*/
    /*    margin-right: 11px;*/
    /*    position: absolute;*/
    /*    left: 0;*/
    /*    border-radius: 11px;*/
    /*}*/
    input[type=radio] {
        display: none;
        -webkit-appearance: none;
    }

    /* Non-essential */
    body {
        margin: 2em;
        padding-left: 5px;
        text-align: left;
        /* remove gray highlight on tap in iOS */
        -webkit-tap-highlight-color:transparent;
    }
    .question {
        margin-bottom: 8em;
    }
    .custom-radio {
        margin-left: 30px;
    }
    #q1 {
        margin-top: 6em;
    }
    p {
        color: white;
        font-family: Bitter, sans-serif;
        font-size: 1em;
    }
    #submit {
        font-size: 24px;
        font-family: Bitter, sans-serif;
        color: #448AC1;
        background-color: white;
        width: 80px;
        height: 80px;
        border: none;
        border-radius: 40px;
    }


</style>
<body class="qn">
<div style="border: inset thick grey; margin-top: 110px;">
    <div class="row">
        <div class="offset-4 col-md-2">
            <h4 class="text-white" style="background: darkgoldenrod"><u>Submit Your Answers</u></h4>
        </div>
    </div>
    <form id="question-form">
        <div class="container">
            <div class="row">
                <div class="col-md-12"><label>1. Did you find the correct choice with the help of
                    this app?</label>
                </div>


                <%--                <div class="row pb-3">--%>
                <%--                    <div class="col-md-12">--%>
                <div class="  custom-control custom-radio col-md-2">
                    <input id="choice-yes" name="choice" type="radio"
                           class="custom-control-input" value="a.Yes"
                           required>
                    <label class="custom-control-label d-inline-flex" for="choice-yes">
                        a.Yes
                    </label>
                </div>
                <div class="  custom-control custom-radio col-md-2">
                    <input name="choice" type="radio" value="b.No" class="custom-control-input"
                           id="choice-no">
                    <label class="custom-control-label d-inline-flex" for="choice-no">
                        b.No
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2 ">
                    <input name="choice" type="radio" class="custom-control-input" value="c.May Be"
                           required id="choice-maybe">
                    <label class="custom-control-label d-inline-flex" for="choice-maybe">
                        c.May Be
                    </label>
                </div>


                <div class="col-md-12">
                    <label>2. On the scale of 1 to 5. Rate the variety of choices provided by the
                        system.</label>
                </div>
                <div class="custom-control custom-radio col-md-2 ">
                    <input id="rate-one" name="rate" type="radio" class="custom-control-input"
                           value="a.1" required>
                    <label class="custom-control-label d-inline-flex" for="rate-one">
                        a.1
                    </label>
                </div>
                <div class=" custom-control custom-radio col-md-2">
                    <input id="rate-two" name="rate" type="radio" value="b.2"
                           class="custom-control-input" required>
                    <label class="custom-control-label d-inline-flex" for="rate-two">
                        b.2
                    </label>
                </div>
                <div class=" custom-control custom-radio col-md-2">
                    <input id="rate-three" name="rate" type="radio" value="c.3"
                           class="custom-control-input" required>
                    <label class="custom-control-label d-inline-flex" for="rate-three">
                        c.3
                    </label>
                </div>
                <div class=" custom-control custom-radio col-md-2">
                    <input id="rate-four" name="rate" type="radio" class="custom-control-input"
                           value="d.4" required>
                    <label class="custom-control-label d-inline-flex" for="rate-four">
                        d.4
                    </label>
                </div>
                <div class=" custom-control custom-radio col-md-2">
                    <input id="rate-five" name="rate" type="radio" class="custom-control-input"
                           value="e.5" required>
                    <label class="custom-control-label d-inline-flex" for="rate-five">
                        e.5
                    </label>
                </div>
                <div class="col-md-12 pt-3">
                    <label>3. On the scale of 1 to 5. Rate the smoothness of the School's
                        Information Collection Centre
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="smoothness-one" name="smoothness" type="radio"
                           class="custom-control-input" value="a.1" required>
                    <label class="custom-control-label d-inline-flex" for="smoothness-one">
                        a.1
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="smoothness-two" name="smoothness" type="radio" value="b.2"
                           class="custom-control-input" required>
                    <label class="custom-control-label d-inline-flex" for="smoothness-two">
                        b.2
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="smoothness-three" name="smoothness" type="radio" value="c.3"
                           class="custom-control-input" required>
                    <label class="custom-control-label d-inline-flex" for="smoothness-three">
                        c.3
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="smoothness-four" name="smoothness" type="radio"
                           class="custom-control-input" value="d.4" required>
                    <label class="custom-control-label d-inline-flex" for="smoothness-four">
                        d.4
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="smoothness-five" name="smoothness" type="radio"
                           class="custom-control-input" value="d.5" required>
                    <label class="custom-control-label d-inline-flex" for="smoothness-five">
                        d.5
                    </label>
                </div>
                <div class="col-md-12 pt-3">
                    <label>4) Which of the following best describes the area of the school you
                        preferred?</label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="area-Kathmandu" name="area" type="radio" class="custom-control-input"
                           value="a.Kathmandu" required>
                    <label class="custom-control-label d-inline-flex" for="area-Kathmandu">
                        a.Kathmandu
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="area-Bhaktapur" name="area" type="radio" value="b.Bhaktapur"
                           class="custom-control-input" required>
                    <label class="custom-control-label d-inline-flex" for="area-Bhaktapur">
                        b.Bhaktapur
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="area-Lalitpur" name="area" type="radio" value="c.Lalitpur"
                           class="custom-control-input" required>
                    <label class="custom-control-label d-inline-flex" for="area-Lalitpur">
                        c.Lalitpur
                    </label>
                </div>

                <div class="col-md-12 pt-3">
                    <label>5)How strongly are you satisfied with the rating of school provided by
                        the system (1-5)</label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="satified-one" name="satified" type="radio"
                           class="custom-control-input" value="a.1" required>
                    <label class="custom-control-label d-inline-flex" for="satified-one">
                        a.1
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="satified-two" name="satified" type="radio" value="b.2"
                           class="custom-control-input" required>
                    <label class="custom-control-label d-inline-flex" for="satified-two">
                        b.2
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="satified-three" name="satified" type="radio" value="c.3"
                           class="custom-control-input" required>
                    <label class="custom-control-label d-inline-flex" for="satified-three">
                        c.3
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="satified-four" name="satified" type="radio"
                           class="custom-control-input" value="d.4" required>
                    <label class="custom-control-label d-inline-flex" for="satified-four">
                        d.4
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="satified-five" name="satified" type="radio"
                           class="custom-control-input" value="d.5" required>
                    <label class="custom-control-label d-inline-flex" for="satified-five">
                        d.5
                    </label>
                </div>
                <div class="col-md-12 pt-3">
                    <label>6) I would imagine that most people would learn to use this system very
                        quickly</label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="learn-strong" name="learn" type="radio" class="custom-control-input"
                           value="a.Strongly Agree" required>
                    <label class="custom-control-label d-inline-flex" for="learn-strong">
                        a.Strongly Agree
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="learn-Agree" name="learn" type="radio" value="b.Agree"
                           class="custom-control-input" required>
                    <label class="custom-control-label d-inline-flex" for="learn-Agree">
                        b.Agree
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="learn-satisfied" name="learn" type="radio" value="c.Satisfied"
                           class="custom-control-input" required>
                    <label class="custom-control-label d-inline-flex" for="learn-satisfied">
                        c.Satisfied
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="learn-not" name="learn" type="radio" class="custom-control-input"
                           value="d.Not okay" required>
                    <label class="custom-control-label d-inline-flex" for="learn-not">
                        d.Not okay
                    </label>
                </div>
                <div class="col-md-12 pt-3">
                    <label>7. Was the system user friendly?
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="friendly-yes" name="friendly" type="radio"
                           class="custom-control-input" value="a.Yes"
                           required>
                    <label class="custom-control-label d-inline-flex" for="friendly-yes">
                        a.Yes
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input name="friendly" type="radio" value="b.No" class="custom-control-input"
                           id="friendly-no">
                    <label class="custom-control-label d-inline-flex" for="friendly-no">
                        b.No
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input name="friendly" type="radio" class="custom-control-input"
                           value="c.May Be" required id="friendly-maybe">
                    <label class="custom-control-label d-inline-flex" for="friendly-maybe">
                        c.May Be
                    </label>
                </div>
                <div class="col-md-12 pt-3">
                    <label>8) The interface of the system was pleasant. scale (1-5)</label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="interface-one" name="interface" type="radio"
                           class="custom-control-input" value="a.1" required>
                    <label class="custom-control-label d-inline-flex" for="interface-one">
                        a.1
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="interface-two" name="interface" type="radio" value="b.2"
                           class="custom-control-input" required>
                    <label class="custom-control-label d-inline-flex" for="interface-two">
                        b.2
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="interface-three" name="interface" type="radio" value="c.3"
                           class="custom-control-input" required>
                    <label class="custom-control-label d-inline-flex" for="interface-three">
                        c.3
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="interface-four" name="interface" type="radio"
                           class="custom-control-input" value="d.4" required>
                    <label class="custom-control-label d-inline-flex" for="interface-four">
                        d.4
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="interface-five" name="interface" type="radio"
                           class="custom-control-input" value="d.5" required>
                    <label class="custom-control-label d-inline-flex" for="interface-five">
                        d.5
                    </label>
                </div>
                <div class="col-md-12 pt-3">
                    <label>9. How system relevant do you find the accuracy of School's
                        Detail?</label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="accurate-high" name="accurate" type="radio"
                           class="custom-control-input" value="a.Highly Accurate" required>
                    <label class="custom-control-label d-inline-flex" for="accurate-high">
                        a.Highly Accurate
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="accurate-acc" name="accurate" type="radio" value="b.Accurate"
                           class="custom-control-input" required>
                    <label class="custom-control-label d-inline-flex" for="accurate-acc">
                        b.Accurate
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="accurate-low" name="accurate" type="radio" value="c.Less Accurate"
                           class="custom-control-input" required>
                    <label class="custom-control-label d-inline-flex" for="accurate-low">
                        c.Less Accurate
                    </label>
                </div>
                <div class="col-md-12 pt-3">
                    <label>10. Would you recommend the School's Information Collection centre to
                        other guardians?</label>
                </div>
                <div class="custom-control custom-radio col-md-2">
                    <input id="recommand-yes" name="recommand" type="radio"
                           class="custom-control-input" value="a.Yes"
                           required>
                    <label class="custom-control-label d-inline-flex" for="recommand-yes">
                        a.Yes
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2 col-md-2 col-md-2">
                    <input name="recommand" type="radio" value="b.No" class="custom-control-input"
                           id="recommand-no">
                    <label class="custom-control-label d-inline-flex" for="recommand-no">
                        b.No
                    </label>
                </div>
                <div class="custom-control custom-radio col-md-2 col-md-2">
                    <input name="recommand" type="radio" class="custom-control-input"
                           value="c.May Be" required id="recommand-maybe">
                    <label class="custom-control-label d-inline-flex" for="recommand-maybe">
                        c.May Be
                    </label>
                </div>
                <div class="col-md-12 pt-3">
                    <label>11. How do you get to know about School's information collection
                        centre?</label>
                    <div class="col-md-6">
                        <textarea id="information" name="information" type="text"
                                  class="form-control"></textarea>

                    </div>
                </div>
                <div class="col-md-12 pt-3 pb-4">
                    <label>12. Would you drop some suggestion to grow us stronger?</label>
                    <div class="col-md-6">
                        <textarea id="suggestion" name="suggestion" type="text"
                                  class="form-control"></textarea>

                    </div>
                </div>
                <button type="button" class="btn btn-sucess buttons offset-4"
                        onclick="submitForm()">Submit Answer
                </button>
            </div>

        </div>

    </form>
</div>

<script>
  function submitForm() {
    let questionAnswerData = {};
    let finalData = {};
    const questionAnswer = $('#question-form').serializeArray();
    console.log(questionAnswer);
    if(questionAnswer.length < 10){
      alert("please fill all data");
      return;
    }
    questionAnswer.forEach(data => {
      questionAnswerData[data.name] = data.value;
      if(data.value == null || data.value == '') {
        valid = false;
      }
    });
     finalData['ratingData'] =  JSON.stringify(questionAnswerData);

    $.ajax({
      url:"${pageContext.request.contextPath}/questionAnswer/save/"+ sessionStorage.getItem("userId"),
      type:"post",
      contentType:"application/json",
      data: JSON.stringify(finalData),
      success:function(data){
        console.log(data);
        window.location.href = '${pageContext.request.contextPath}/home';
      },

    });

  }
</script>

</body>
</html>
<jsp:include page="footer.jsp"/>
