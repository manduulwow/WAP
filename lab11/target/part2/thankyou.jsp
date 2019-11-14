<%@ page import = "java.io.*,java.util.*" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="card">
        <div class="card-header">
            Thank you! Your message has been received as follows:
        </div>
        <div class="card-body">
            <blockquote class="blockquote mb-0">
                <p>Name: <%= request.getParameter("name") %></p>
                <p>Gender: <%= request.getParameter("radioGender") %></p>
                <p>Category: <%= request.getParameter("category") %></p>
                <p>Message: I like this website a lot. Please keep up the good work. Cheers!</p>
                <p>Please feel free to <a href="index.jsp" role="button">Contact Us</a> again</p>
            </blockquote>
        </div>
        <span class="text-muted">
             <%
                 Integer hitsCount = (Integer)application.getAttribute("hitCounter");
                 if( hitsCount ==null || hitsCount == 0 ) {
                     /* First visit */
                     hitsCount = 1;
                 } else {
                     /* return visit */
                     hitsCount += 1;
                 }
                 application.setAttribute("hitCounter", hitsCount);

                 Integer totalHitsCount = (Integer)application.getAttribute("totalHitCounter");
                 if( totalHitsCount ==null || totalHitsCount == 0 ) {
                     /* First visit */
                     totalHitsCount = 1;
                 } else {
                     /* return visit */
                     totalHitsCount += 1;
                 }
                 application.setAttribute("totalHitsCount", totalHitsCount);
             %>
            Hit Count for this page: <%= hitsCount%>
        </span><span style="float:right;" class="text-muted">Total Hit Count for the entire WebApp: <%= totalHitsCount%></span>
    </div>
</div>
</body>
</html>