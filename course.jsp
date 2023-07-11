<%@ page import="db.DAO,java.util.*,java.text.*" %>
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
 <%@ include file="adminheader.jsp" %>
 <%
    SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
    String ann_date=df.format(new Date());
   // out.println(ann_date);
 %>
 <div class="container mt-4 mb-5">
    <div class="row">
        <div class="col-sm-4">
            <form action="doAdd.jsp" onsubmit="return validate()" method="post">
            <h3>Course Details</h3>
            <div class="mb-3">
                <input type="text" name="cid" id="cid_id" class="form-control" placeholder="Course Id">
            </div>
            <div class="mb-3">
                <input type="text" name="cname" id="cname_id" class="form-control" placeholder="Course Name">
            </div>
            <div class="mb-3">
                <input type="text" name="duration" id="duration_id" class="form-control" placeholder="Duration">
            </div>
            <div class="mb-3">
                <input type="text" name="price" id="price_id" class="form-control" placeholder="Price">
            </div>
            <div class="mb-3">
                <input type="text" name="discount" id="discount_id" class="form-control" placeholder="Discount">
            </div>
            <div class="mb-3">
                <label for="start_date">StartDate</label>
                <input type="text" value="<%=ann_date%>" name="start_date" id="start_date_id" class="form-control" placeholder="StartDate:yyyy-MM-dd">
            </div>
            <div class="mb-3">
                <label for="end_date">EndDate</label>
                <input type="text" value="<%=ann_date%>" name="end_date" id="end_date_id" class="form-control" placeholder="EndDate:yyyy-MM-dd">
            </div>
   
            <div class="mb-3">
                <button type="Submit" class="btn  btn-danger">Add</button>
                <button type="reset" class="btn btn-secondary">Reset</button>
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
                           <p class="alert alert-success" >Trasaction Succeded!</p>     
                    <%
                        }else{
                            %>
                                <p class="alert alert-danger" >Transaction Failed!</p> 
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
        let cid=document.getElementById("cid_id").value;
        let cname=document.getElementById("cname_id").value;
        let duration=document.getElementById("duration_id").value;
        let price=document.getElementById("price_id").value;
        let discount=document.getElementById("discount_id").value;
        if(cid=="")
        {
            alert("Course Id Must Not Be Empty");
            return false;
        }else if(cname=="")
        {
            alert("Course Name Must Not Be Empty");
            return false;
        }else if(duration=="")
        {
            alert("Duration Must Not Be Empty");
            return false;
        }else if(price=="")
        {
            alert("Price Must Not Be Empty");
            return false;
        }else if(discount=="")
        {
            alert("Discount Must Not Be Empty");
            return false;
        }
        return true;
    }
</script>