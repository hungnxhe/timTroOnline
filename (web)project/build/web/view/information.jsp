<%@page import="dal.homeDAO"%>
<%@page import="model.Home"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </head>
    <body style="background-color: antiquewhite;">
        <h1 style="text-align: center;">Thông tin Nhà Trọ</h1>
        <%
            String idh = request.getParameter("homid");
            homeDAO dl = new homeDAO();
            Home h = new Home();
            h = dl.gethome(idh);
        %>
        <div style="display: flex;">
            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" style="margin-left: 80px; margin-top: 50px; width: 850px; ">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="<%=h.getImage()%>" alt="First slide" style="height: 500px;">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="<%=h.getImage1()%>" alt="Second slide" style="height: 500px;">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="<%=h.getImage2()%>" alt="Third slide" style="height: 500px;">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
                <br><br>
                <a href="../../_web_project/list"><h5 style="text-align: center;">Back to home page</h5></a>
            </div>

            <p style="margin-top: 50px; margin-left: 20px; border-width:2px;
               border-style:solid;
               border-color:black;">

                <%
                    String string = h.getDate();
                    String[] parts = string.split(" ");
                    String part1 = parts[0];
                %>
                <label style="width: 200px; color: #45a049">Mã nhà:</label><input value="<%=h.getAccount_id()%>" readonly ><br><br>
                <label style="width: 200px;color: #45a049">Mã phòng:</label><input value="<%=h.getHome_id()%>" readonly ><br><br>
                <label style="width: 200px;color: #45a049">Ngày (year/day/month):</label><input value="<%=part1%>" readonly ><br><br>
                <label style="width: 200px;color: #45a049">Status:</label><input value="<%=h.getStatus()%>" readonly ><br><br>
                <label style="width: 100px;color: #45a049">Mô tả :</label><textarea  readonly  style="height: 230px;width: 400px;"><%=h.getMota()%></textarea> <br><br>
                <label style="width: 200px;color: #45a049">GIá:</label><input value="<%=h.getPrice()%> vnd" readonly ><br><br>
                <a href="profile.jsp?accid=<%=h.getAccount_id()%>">Lấy thông tin liên lạc và địa chỉ</a>
                <a href="../../_web_project/list" style="margin-left: 80px;">Back to Home page</a>
            </p>
        </div>

    </body> 
</html>
