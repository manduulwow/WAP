<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body style="padding-bottom: 200px;">
<div id="box" style="width:90%; margin: auto;">
    <%
        Integer indexCounter = (Integer)application.getAttribute("indexCounter");
        if( indexCounter ==null || indexCounter == 0 ) {
            /* First visit */
            indexCounter = 1;
        } else {
            /* return visit */
            indexCounter += 1;
        }
        application.setAttribute("indexCounter", indexCounter);

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
    <div class="jumbotron">
        <h1 class="display-4">Hello, world of HttpServlet 4.0!</h1>
        <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
        <hr class="my-4">
        <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
        <p class="lead">
            <a class="btn btn-primary btn-lg" href="form.jsp" role="button">Learn more</a>
        </p>
    </div>
    </span>Hit Count for this page: <%= indexCounter%>
    </span><span style="float:right;" class="text-muted">Total Hit Count for the entire WebApp: <%= totalHitsCount%></span>
</div>
</body>

</html>