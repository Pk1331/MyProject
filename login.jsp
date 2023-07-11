<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Document</title>
</head>
<body>
 <%@ include file="header.jsp" %>
 <div class="container-fluid mt-4 mb-5 bg-light">
    <div class="row">
        <div class="col-sm-6">
            <img src="images/student3.jpg" class="img-thumbnail" alt="">
        </div>
        <div class="col-sm-4">
            <form action="doLogin.jsp" onsubmit="return validate()" method="post">
            <h3>Login Page</h3>
            
            <div class="mb-3">
                <input type="text" name="email" id="email_id" class="form-control" placeholder="Email">
            </div>
            <div class="mb-3">
                <input type="password" name="pwd" id="pwd_id" class="form-control" placeholder="Password">
            </div>
            
            <div class="mb-3">
                <button type="Submit" class="btn  btn-danger">Login</button>
                <button type="reset" class="btn btn-secondary">Reset</button>
            </div>
            <div class="mb-3">
                <p>
                    <%
                    String msg=request.getParameter("msg");
                    if(msg!=null)
                    out.println(msg);
                    %>
                </p>
            </div>
            </form>
        </div>
        
    </div>
</div>
 <%@ include file="footer.jsp" %>
</body>
</html>

<script>
    function validate()
    {
        
        let phone=document.getElementById("phone_id").value;        
        let pwd=document.getElementById("pwd_id").value;
        if(phone=="")
        {
            alert("Phone Must Not Be Empty");
            return false;
        }else if(pwd=="")
        {
            alert("Pwd Must Not Be Empty");
            return false;
        }
        return true;
    }
</script>