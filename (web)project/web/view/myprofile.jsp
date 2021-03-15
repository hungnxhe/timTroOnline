<%-- 
    Document   : myprofile
    Created on : Nov 2, 2020, 9:59:59 PM
    Author     : HaNoi
--%>

<%@page import="dal.AccountDAO"%>
<%@page import="model.Account"%>
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
        Account a = (Account) session.getAttribute("admin");
        String id = a.getAccountID();
        AccountDAO ad = new AccountDAO();
        Account b = new Account();
        b = ad.getaccountbyid(id);
    %>
    <body style="background-color: antiquewhite">
        <form action="../../_web_project/updateaccount">
            <div style=" width: 400px; margin: auto; margin-top: 100px;border-width:2px;
                 border-style:solid;
                 border-color:#45a049 ;">
                <h2 style="text-align: center;">Profile ${sessionScope.admin.accountID}</h2>
                <label for="accid">Mã chủ trọ</label>
                <input type="text" readonly name="a" value="${sessionScope.admin.accountID}">
                <label for="mail">Mail</label>
                <input type="text" readonly name="b" value="${sessionScope.admin.mail}">
                <label for="diachi">Địa chỉ</label>
                <input type="text" name="c" value="<%=b.getDiachID()%>">
                <label for="sdt">Số Điện Thoại</label>
                <input type="text" name="d" value="<%=b.getSodt()%>">
                <label for="sdt">password</label>
                <input type="text" name="e" value="<%=b.getPass()%>"> 
                <label for="sdt">RE-password</label>
                <input type="text" name="f" value="<%=b.getPass()%>"> 
                <button type="submit">Update</button>
                <a href="../../_web_project/list">Back to Home page</a>
            </div>  
        </form>
    </body>
</html>
