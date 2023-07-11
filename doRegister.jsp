<%@ page import="db.DAO" errorPage="catch.jsp" isErrorPage="false" buffer="12kb" autoFlush="true" %>
<%
    String uname=request.getParameter("uname");
    String phone=request.getParameter("phone");
    String email=request.getParameter("email");
    String pwd=request.getParameter("pwd");
    DAO dao=new DAO();
    if(dao.doRegister(uname,email,phone,pwd))
    {   response.sendRedirect("register.jsp?msg=yes");
    }
    else
    {   response.sendRedirect("register.jsp?msg=no");
    }
%>