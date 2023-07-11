<%@ page import="db.DAO,java.util.*,java.text.SimpleDateFormat" errorPage="addcatch.jsp" isErrorPage="false" buffer="12kb" autoFlush="true" %>
<%
    int cid=Integer.parseInt(request.getParameter("cid"));
    String cname=request.getParameter("cname");
    String duration=request.getParameter("duration");
    float price=Float.parseFloat(request.getParameter("price"));
    String discount=request.getParameter("discount");
    String start_date=request.getParameter("start_date");
    String end_date=request.getParameter("end_date");
    SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
    String ann_date=df.format(new Date());
    DAO dao=new DAO();
    if(dao.addCourse(cid,cname,price,duration,discount,start_date,ann_date,end_date))
    {   response.sendRedirect("course.jsp?msg=yes");
    }
    else
    {   response.sendRedirect("course.jsp?msg=no");
    } 
%>