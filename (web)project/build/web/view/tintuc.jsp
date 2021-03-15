<%@page import="model.tintuc"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dal.TintucDAO"%>
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
    <body style="background-color: antiquewhite">  
        <form>
            <h1 style="margin-top: 20px; margin-left: 30px;"> <span>Tin tức</span></h1>
            <%
                TintucDAO tdao = new TintucDAO();
                List<tintuc> list = new ArrayList<>();
                list = tdao.getAll();
                for (tintuc el : list) {
            %>
            <div style="margin-left: 100px; margin-right: 100px; border-width:2px;
                 border-style:solid;
                 border-color:black;
                 ">   
                <h2 style="margin-left: 5px;"><a href="thongtin.jsp?matinn=<%=el.getMa() %>"><%=el.getTieude()%></a></h2>      
                <div style="display: flex;">           
                    <img src="<%=el.getAnh()%>" style="height: 180px; width: 180px; margin-left: 5px; margin-bottom: 5px;">             
                    <p style="margin-left: 10px; "><%=el.getLoidan()%></p>
                </div>
            </div> 
            <%
                }
            %>
            <br>
            <a href="../../_web_project/list"><h5 style="text-align: center;">Back to home page</h5></a>
        </form>
       
    </body>
</html>

