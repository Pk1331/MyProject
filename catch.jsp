<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <title>MyCollege</title>
</head>
<body>
    <%@ include file="header.jsp" %>
    <div class="p-5 m-5">
        <h1 class="alert alert-danger">Error Page</h1>
        <!-- 
            //JSP implicit objects
            out: JspWriter
            request: HttpServletRequest
            response: HttpServletResponse
            exception: Exception class object
         -->
        <%=exception%>
        <%
            response.sendRedirect("register.jsp?msg="+exception);
        %>
        <!-- <a href="register.jsp?msg=<%=exception%>">Go to Registration Page</a> -->
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>