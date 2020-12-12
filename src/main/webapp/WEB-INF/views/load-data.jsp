<jsp:include page="header.jsp"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Data</title>
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
            <h3 class="text-center">Weather Data</h3>
        </div>
        <div class="card-body">
            <table class="table styled-table" id="customers">
                <tr>
                    <th>Location</th>
                    <td><strong id="country"></strong>/<strong id="name"></strong></td>
                </tr>
                <tr>
                    <th>sunrise</th>
                    <td><strong id="sunrise"></strong></td>
                </tr>  <tr>
                    <th>sunset</th>
                    <td><strong id="sunset"></strong></td>
                </tr>
                 <tr>
                    <th>Temperature</th>
                    <td><strong id="temp"></strong></td>
                </tr>
                <tr>
                    <th>Feels Like</th>
                    <td><strong id="feels_like"></strong></td>
                </tr>
                <tr>
                    <th>Visibility</th>
                    <td><strong id="visibility"></strong></td>
                </tr>
                <tr>
                    <th>Weather Discription</th>
                    <td><strong id="description"></strong></td>
                </tr>

            </table>
        </div>
    </div>
</div>
</body>
<script>
    $(document).ready(function () {
        showData();
    });
    function showData() {
        $.ajax({
            url: "http://api.openweathermap.org/data/2.5/weather?id=1283240&lang=en&units=metric&APPID=845ebe51ff2d4509697271f731091f6c&fbclid=IwAR0iyLnLi6-iQUB106-5uPm6dZDIlwGhrQ6qCX-hLpo1p-z8MCjx4jnwgpo",
            type: "GET",
            success: function (data) {
                console.log(data);
                if (data == null) {
                    alert("no data found !!");

                } else {
                    console.log("fsdg");
                    console.log(data);
                       document.getElementById("name").innerText = data.name;
                       document.getElementById("country").innerText = data.sys.country;
                       document.getElementById("sunrise").innerText = new Date(data.sys.sunrise);
                       document.getElementById("sunset").innerText = new Date(data.sys.sunset);
                       document.getElementById("temp").innerText = data.main.temp + '° celsius';
                       document.getElementById("visibility").innerText = data.visibility + ' kilometre';
                       document.getElementById("feels_like").innerText = data.main.feels_like + '° celsius';
                       document.getElementById("description").innerText = data.weather[0].description;
                }
            },

        });

    }
</script>
</html>
<jsp:include page="footer.jsp"/>