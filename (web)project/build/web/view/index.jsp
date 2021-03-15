<%-- 
    Document   : index
    Created on : Oct 6, 2020, 10:56:10 PM
    Author     : HaNoi
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dal.homeDAO"%>
<%@page import="dal.homeDAO"%>
<%@page import="model.Home"%>
<%@page import="model.Home"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="view/css/newcss.css" rel="stylesheet" type="text/css"/>
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        <style>
            .pagination {
                display: inline-block;
            }
            .pagination a {
                background-color: #4CAF50;
                color: black;
                float: left;
                padding: 8px 16px;
                text-decoration: none;
            }
            .pagination a.active {
                background-color: #4CAF50;
                color: white;
            }
            .pagination a:hover:not(.active) {
                background-color: chocolate;
            }
        </style>
    </head>
    <body><form action="search">
        <div class="container">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="http://www.nhatrosinhvien.com/wp-content/uploads/2016/08/Untitled-3.jpg" alt="First slide" style="height: 300px;">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="https://www.vlance.vn/uploads/portfolio/view/471a80cd3ba9512becbd86e6282d2ff5447e6a69.jpg1.png" alt="Second slide" style="height: 300px;">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="https://ytuongkinhdoanh.vn/wp-content/uploads/2019/05/quan-ly-nha-tro-cho-thue.png" alt="Third slide" style="height:  300px;">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <h2 style="text-align:center; color: blue;text-decoration: underline; margin-top: 15px;margin-bottom: 10px;"><span>Hỗ Trợ Cho Thuê -Tìm Nhà Trọ</span></h2>
            <jsp:include page="navbar.jsp"/>
            <div class= "row d-inline-flex">           
                <!-- Gallery Item 1 -->
                <%
                    homeDAO d = new homeDAO();
                    if (request.getAttribute("data") != null) {
                        List<Home> list = new ArrayList<Home>();
                        list = (List<Home>) request.
                                getAttribute("data");
                        for (Home el : list) {
                            String string=el.getDate();
                            String[] parts = string.split(" ");
                            String part1 = parts[0];
%>
                <div class ="col-12 col-sm-6 col-md-4 p-2" style="border: 1px;">
                    <div class="d-flex flex-column text-center border height100">
                        <div>
                            <a href="view/information.jsp?homid=<%=el.getHome_id()%>"><img src="<%=el.getImage()%>" alt="" style="height: 194px;width: 350px; margin-top: 10px;"/></a>
                        </div>                        
                       <h5 style="color: #4CAF50; width: 380px;"><a href="view/profile.jsp?accid=<%=el.getAccount_id()%>"><%=el.getAccount_id()%></a> - <%=el.getHome_id()%></h5> 
                        <p style="width: 380px;">
                            Status:<%=el.getStatus()%></br>
                            Giá   :<%=el.getPrice()%> vnd</br>
                            Date(year/day/month)  :<%=part1 %>
                        </p>
                        <a href="view/information.jsp?homid=<%=el.getHome_id()%>"><label style="height: 30px; background-color:  #45a049; color: black; width: 350px; text-decoration: underline">Chi Tiết</label></a>
                    </div>
                </div>
                <%
                        }
                    }
                %>
            </div>
            <ul>
                <%
                    int a, b;
                    int size = (int) request.getAttribute("size");
                    int numpage = size / 6;
                    if (numpage * 6 < size) {
                        numpage = numpage + 1;
                    }
                    for (int i = 1; i <= numpage; i++) {
                        a = (i - 1) * 6;
                        b = i * 6;
                        if (b > size) {
                            b = size;
                        }
                %>
                <li class="pagination">
                    <a href="list?start=<%=a%>&end=<%=b%>"><%=i%></a>
                </li>
                <%
                    }
                %>
            </ul>
            <hr>
            <div class="text-center center-block">
                <p class="txt-railway" > <a class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">- Term of user -</a></p>
                
                            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">Term of user</h5>
                        </div>
                        <div class="modal-body">
                            <p>
                                chưa nghĩ ra nội quy <br> sẽ bổ sung sau
                            </p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
                
                <p class="txt-railway" >  Contact Us : </p>
                <a href="https://www.facebook.com/groups/2015326255462298" target="_blank"><i id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a>
                <a href="#"><i id="social-tw" class="fa fa-twitter-square fa-3x social"></i></a>
                <a href="#"><i id="social-gp" class="fa fa-google-plus-square fa-3x social"></i></a>
                <a href="mailto:hung6nuh@gmail.com"><i id="social-em" class="fa fa-envelope-square fa-3x social"></i></a>
            </div>
            <hr>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        </form>
    </body>
</html>
