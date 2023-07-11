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
            <img src="images/student2.jpg" class="img-thumbnail" alt="">
        </div>
        <div class="col-sm-4">
            <form action="doRegister.jsp" onsubmit="return validate()" method="post">
            <h3>Register Page</h3>
            <div class="mb-2">
                <input type="text" name="uname" id="uname_id" class="form-control" placeholder="Name">
            </div>
            <div class="mb-2">
                <input type="text" name="phone" id="phone_id" class="form-control" placeholder="Phone">
            </div>
            <div class="mb-2">
                <input type="text" name="email" id="email_id" class="form-control" placeholder="Email">
            </div>
            <div class="mb-2">
                <input type="password" name="pwd" id="pwd_id" class="form-control" placeholder="Password">
            </div>
            <div class="mb-3">
                <input type="password" name="cpwd" id="cpwd_id" class="form-control" placeholder="Confirm Password">
            </div>
            <div class="mb-2 mt-1">
                <button type="Submit" class="btn  btn-success">Register</button>
                <button type="reset" class="btn btn-danger">Reset</button>
            </div>
            <div class="mb-3">
                <p>
                    <%
                    String msg=request.getParameter("msg");
                    if(msg!=null)
                    {
                        if(msg.equals("yes"))
                        {
                    %>
                           <p class="alert alert-success" >Registration Is Successfull</p>     
                    <%
                        }else{
                            %>
                                <p class="alert alert-danger" >Registration Is Failed</p> 
                                <p class="alert alert-danger" ><%=msg%></p> 
                            <%
                        }
                    }
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
        let uname=document.getElementById("uname_id").value;
        let phone=document.getElementById("phone_id").value;
        let email=document.getElementById("email_id").value;
        let city=document.getElementById("city_id").value;
        let address=document.getElementById("address_id").value;
        let pwd=document.getElementById("pwd_id").value;
        let cpwd=document.getElementById("cpwd_id").value;
        if(uname=="")
        {   alert("User Name Must Not Be Empty");
            return false;
        }else if(phone=="")
        {   alert("Phone Must Not Be Empty");
            return false;
        }else if(email=="")
        {   alert("Email Must Not Be Empty");
            return false;
        }else if(city=="")
        {   alert("City Must Not Be Empty");
            return false;
        }else if(address=="")
        {   alert("Address Must Not Be Empty");
            return false;
        }else if(pwd=="")
        {
            alert("Pwd Must Not Be Empty");
            return false;
        }else if(cpwd=="")
        {
            alert("Cpwd Must Not Be Empty");
            return false;
        }else if(pwd!=cpwd)
        {
            alert("Password and Confirm Password Must be same");
            return false;
        }
        return true;
    }
</script>