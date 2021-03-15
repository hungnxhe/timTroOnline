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
    <body style="background-color: antiquewhite;">

        <form class="form-horizontal" action="../../_web_project/addtintuc">
            <fieldset>

                <!-- Form Name -->
                <h2 style="text-align: center;">Thêm tin tức</h2>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="matin">Mã tin</label>  
                    <div class="col-md-4">
                        <input type="text"  name="matin"/>
                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="tieude">Tiêu Đề</label>  
                    <div class="col-md-4">
                        <input id="product_id" name="tieude" class="form-control input-md" type="text">
                    </div>
                </div>
                <!-- Textarea -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="loidan">Lời Dẫn</label>
                    <div class="col-md-4">                     
                        <textarea class="form-control" id="product_description" name="loidan"></textarea>
                    </div>
                </div>
                <!-- Textarea -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="noidung">Nội Dung</label>
                    <div class="col-md-4">                     
                        <textarea class="form-control" id="product_description" name="noidung"></textarea>
                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="linkanh">Link ảnh</label>  
                    <div class="col-md-4">
                        <input id="percentage_discount" name="linkanh" class="form-control input-md" type="text">
                    </div>
                </div>
                <div style="display: flex;">
                    <button type="submit" style="margin-left: 450px;">Thêm tin</button> <p style="color: red; margin-left: 60px;">*hình ảnh chỉ mang tính chất minh họa cho vui</p>
                </div>
            </fieldset>
        </form>

    </body>
</html>
