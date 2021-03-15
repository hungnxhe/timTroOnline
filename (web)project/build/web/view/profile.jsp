<%-- 
    Document   : myprofile
    Created on : Nov 2, 2020, 9:59:59 PM
    Author     : HaNoi
--%>

<%@page import="model.Account"%>
<%@page import="dal.AccountDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            input[type=text], select {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }

            /* Style the submit button */
            input[type=submit] {
                width: 100%;
                background-color: #4CAF50;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            /* Add a background color to the submit button on mouse-over */
            input[type=submit]:hover {
                background-color: #45a049;
            }
        </style>
    </head>
    <%
        String id=request.getParameter("accid");
        AccountDAO adao= new AccountDAO();
        Account a= new Account();
        a= adao.getaccountbyid(id);
    %>
    <body style="background-color: antiquewhite">
        <div style=" height: 400px; width: 400px; margin: auto; margin-top: 100px;border-width:2px;
                 border-style:solid;
                 border-color:black;">
        <h2 style="text-align: center;">Profile <%=a.getAccountID() %></h2>
        <label for="accid">Mã chủ trọ</label>
        <input type="text" id="fname" name="accid" value="<%=a.getAccountID() %>">
        <label for="mail">Mail</label>
        <input type="text" id="lname" name="mail" value="<%=a.getMail()%>">
        <label for="diachi">Địa chỉ</label>
        <input type="text" id="lname" name="diachi" value="<%=a.getDiachID()%>">
        <label for="sdt">Số Điện Thoại</label>
        <input type="text" id="lname" name="sdt" value="<%=a.getSodt()%>">
        </div>
    </body>
</html>

