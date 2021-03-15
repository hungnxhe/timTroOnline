

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add new home post</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
    <body>

        <form class="form-horizontal" action="../../_web_project/addnewhome">
            <fieldset>

                <!-- Form Name -->
                <h2 style="text-align: center;">Add new home post</h2>
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
                        <input id="product_id" name="home_id" placeholder="HOME_ID" class="form-control input-md" required="" type="text"value="${sessionScope.admin.accountID}">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="home_price">PRICE</label>  
                    <div class="col-md-4">
                        <input id="product_price" name="home_price" placeholder="HOME PRICE" class="form-control input-md" required="" type="text">

                    </div>
                </div>

                <!-- Textarea -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_description">HOME DESCRIPTION</label>
                    <div class="col-md-4">                     
                        <textarea class="form-control" id="product_description" name="product_description"></textarea>
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="status">STATUS</label>  
                    <div class="col-md-4">
                        <input id="percentage_discount" name="status" placeholder="STATUS" class="form-control input-md" required="" type="text">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="date">ADD DATE</label>  
                    <div class="col-md-4">
                        <input id="stock_alert" name="date" placeholder="DATE" class="form-control input-md" required="" type="text">

                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="image1">Link of Image 1</label>  
                    <div class="col-md-4">
                        <input id="stock_alert" name="image_1" placeholder="image_1" class="form-control input-md" required="" type="text">

                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="image2">Link of Image 2</label>  
                    <div class="col-md-4">
                        <input id="stock_alert" name="image_2" placeholder="image_2" class="form-control input-md" required="" type="text">
                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="image3">Link of Image 3</label>  
                    <div class="col-md-4">
                        <input id="stock_alert" name="image_3" placeholder="image_3" class="form-control input-md" required="" type="text">

                    </div>
                </div>
                <div style="display: flex;">
                    <button type="submit" style="margin-left: 450px;">Add new post</button> <p style="color: red; margin-left: 60px;">*Chỉ thêm được ảnh bằng link google drive</p>
                </div>
            </fieldset>
        </form>

    </body>
</html>
