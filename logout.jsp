

<%
    //we are destroying the session
    session.invalidate();
    response.sendRedirect("index.jsp?msg=Logged Out Successfully");
%>