<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>

<%
    Gson gsonObj = new Gson();
    Map<Object,Object> map = null;
    List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();

    map = new HashMap<Object,Object>(); map.put("label", "not bad"); map.put("y", 1); list.add(map);
    map = new HashMap<Object,Object>(); map.put("label", "bad"); map.put("y", 2); list.add(map);
    map = new HashMap<Object,Object>(); map.put("label", "excellent"); map.put("y", 3); list.add(map);
    map = new HashMap<Object,Object>(); map.put("label", "good"); map.put("y", 2); list.add(map);

    String dataPoints = gsonObj.toJson(list);
%>
<html>
<head >
    <title style="background: #b8860b;">summary</title>
    <script type="text/javascript">
      window.onload = function() {

        var chart = new CanvasJS.Chart("chartContainer", {
          animationEnabled: true,
          theme: "dark2",
          title: {
            text: "Summery Overview"
          },
          subtitles: [{
            text: "in tonnes"
          }],
          data: [{
            type: "doughnut",
            yValueFormatString: "#,##0",
            indexLabel: "{label}: {y}",
            toolTipContent: "{y}",
            dataPoints : <%out.print(dataPoints);%>
          }]
        });
        chart.render();

      }
    </script>
</head>
<body>
<div id="chartContainer" style="height: 370px; width: 100%; margin-top: 100px;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>
