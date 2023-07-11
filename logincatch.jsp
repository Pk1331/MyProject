<%@ page isErrorPage="true" %>

<%
    response.sendRedirect("login.jsp?msg="+exception);
%>