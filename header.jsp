<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Latest compiled JavaScript -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  <title>MyCollege</title>
</head>
<nav class="navbar navbar-expand-sm  navbar-brand" >
    <div class="container-fluid">
      <a class="navbar-brand" href="index.jsp"><img width="150px" src="images/logo1.png"></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav me-auto">
          <li class="nav-item">
            <a class="nav-link" href="register.jsp">Register</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="login.jsp">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="aboutus.jsp">AboutUs</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="contactUs.jsp">ContactUs</a>
          </li>
        </ul>
        <a href="#" class="btn btn-link text-warning text-decoration-none">
          <%
            String msg1=request.getParameter("msg");
            if(msg1!=null){
              out.println(msg1);
            }
          %>
        </a>
      </div>
    </div>
  </nav>