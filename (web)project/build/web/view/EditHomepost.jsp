

<%@page import="dal.homeDAO"%>
<%@page import="model.Home"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Home post</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
    <body>
        <%
            String id = request.getParameter("homeid");
            homeDAO hom = new homeDAO();
            Home h = new Home();
            h = hom.gethome(id);
            String[] a = h.getImage().split("=");
            String[] b = h.getImage1().split("=");
            String[] c = h.getImage2().split("=");

            String i1 = "https://drive.google.com/file/d/" + a[1] + "/preview";
            String i2 = "https://drive.google.com/file/d/" + b[1] + "/preview";
            String i3 = "https://drive.google.com/file/d/" + c[1] + "/preview";

        %>
        <form class="form-horizontal" action="../../_web_project/updatehome">
            <fieldset>
                <!-- Form Name -->
                <h2 style="text-align: center;">EDit home post</h2>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="idac">Account_ID</label>  
                    <div class="col-md-4">
                        <input type="text" readonly name="idac" value="${sessionScope.admin.accountID}"/>
                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="home_id">HOME ID</label>  
                    <div class="col-md-4">
                        <input id="product_id" readonly name="home_id" placeholder="HOME_ID" class="form-control input-md" required="" type="text" value="<%=h.getHome_id()%>">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="home_price">PRICE</label>  
                    <div class="col-md-4">
                        <input id="product_price" name="home_price" placeholder="HOME PRICE" class="form-control input-md" required="" type="text" value="<%=h.getPrice()%>">

                    </div>
                </div>

                <!-- Textarea -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_description">HOME DESCRIPTION</label>
                    <div class="col-md-4">                     
                        <textarea class="form-control" id="product_description" name="product_description"><%=h.getMota()%></textarea>
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="status">STATUS</label>  
                    <div class="col-md-4">
                        <input id="percentage_discount" name="status" placeholder="STATUS" class="form-control input-md" required="" type="text" value="<%=h.getStatus()%>">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="date">ADD DATE</label>  
                    <div class="col-md-4">
                        <input id="stock_alert" name="date" placeholder="DATE" class="form-control input-md" required="" type="text" value="<%=h.getDate()%>">

                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="image1">Link of Image 1</label>  
                    <div class="col-md-4">
                        <input id="stock_alert" name="image_1" placeholder="image_1" class="form-control input-md" required="" type="text" value="<%=i1 %>">

                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="image2">Link of Image 2</label>  
                    <div class="col-md-4">
                        <input id="stock_alert" name="image_2" placeholder="image_2" class="form-control input-md" required="" type="text" value="<%=i2%>">
                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="image3">Link of Image 3</label>  
                    <div class="col-md-4">
                        <input id="stock_alert" name="image_3" placeholder="image_3" class="form-control input-md" required="" type="text" value="<%=i3 %>">

                    </div>
                </div>

                <button type="submit" style="margin-left: 450px;">Update</button>

            </fieldset>
        </form>

    </body>
</html>
