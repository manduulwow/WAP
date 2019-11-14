<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>

<body style="padding-bottom: 200px;">
<div id="box" style="width:90%; margin: auto;">
    <%
        Integer formCounter = (Integer)request.getServletContext().getAttribute("formCounter");
        if( formCounter ==null || formCounter == 0 ) {
            /* First visit */
            formCounter = 1;
        } else {
            /* return visit */
            formCounter += 1;
        }
        application.setAttribute("formCounter", formCounter);

        Integer totalHitsCount = (Integer)request.getServletContext().getAttribute("totalHitCounter");
        if( totalHitsCount ==null || totalHitsCount == 0 ) {
            /* First visit */
            totalHitsCount = 1;
        } else {
            /* return visit */
            System.out.println(totalHitsCount);
            totalHitsCount += 1;
        }
        request.getServletContext().setAttribute("totalHitsCount", totalHitsCount);
    %>
    <h1>Customer Contact Form</h1>
        <%= request.getAttribute("data") %>.

    <form action="validate"  method="POST" name="myForm" style="margin-bottom: 100px;">
        <div class="form-group">
            <label >*Name:</label>
            <input type="text" class="form-control" id="fname" placeholder="John H.Smith" name="fname">
            <small id="emailHelp" class="form-text text-muted">Enter your full name.</small>
        </div>
        <label >*Gender</label>
        <div class="radio">
            <label><input type="radio" name="optradio1">Male</label>
        </div>
        <div class="radio">
            <label><input type="radio" name="optradio2">Female</label>
        </div>
        <div class="form-group">
            <label for="exampleFormControlSelect1">Category:</label>
            <select class="form-control" id="exampleFormControlSelect1" name="category">
                <option>Select...</option>
                <option>Feedback</option>
                <option>Inquiry</option>
                <option>Complaint</option>
            </select>
        </div>
        <div class="form-group">
            <label for="comment">*Message:</label>
            <textarea class="form-control" rows="5" id="comment" name="message"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
    </span>Hit Count for this page: <%= formCounter%>
    </span><span style="float:right;" class="text-muted">Total Hit Count for the entire WebApp: <%= totalHitsCount%></span>
</div>
</body>
</html>
