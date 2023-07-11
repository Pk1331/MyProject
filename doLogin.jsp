<%@ page import="db.DAO" errorPage="logincatch.jsp" isErrorPage="false" %>
<%
    
    String email=request.getParameter("email");
    String pwd=request.getParameter("pwd");
    DAO dao=new DAO();
    String design=dao.loginCheck(email,pwd);
    if(design!=null)
    {
        session.setAttribute("email:",email);
        session.setAttribute("design",design);
        if(design.equals("admin"))
        {       
            //i am storing valid user phone number in session object
            response.sendRedirect("AdminHome.jsp");
        }else if(design.equals("student"))
        {
            response.sendRedirect("StudentHome.jsp");
        }else if(design.equals("user"))
        {
            response.sendRedirect("UserHome.jsp");
        }
        else{
            response.sendRedirect("login.jsp?msg=Invalid Designation");
        }
    }
    else{
        response.sendRedirect("login.jsp?msg=Invalid Userid/Pwd");
    }
%>
