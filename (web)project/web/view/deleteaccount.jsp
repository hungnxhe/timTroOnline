<%-- 
    Document   : deleteaccount
    Created on : Nov 7, 2020, 10:10:08 AM
    Author     : HaNoi
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.Account"%>
<%@page import="dal.AccountDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete account</title>
    </head> 
    <body style="background-color: antiquewhite">
        <h1 style="text-align: center; color: #45a049"> Delete Account</h1>
        <form>
            <table border="1px" width="40%" style="margin-left: 50px; margin-top: 80px;">
                <tr>
                    <th>Account id</th>
                    <th>mail</th>
                    <th>địa chỉ</th>
                    <th>số điện thoại</th>
                    <th>Mô tả</th>
                    <th>Action</th>
                </tr>
                <%
                    AccountDAO ad = new AccountDAO();
                    List<Account> list = new ArrayList<Account>();
                    list = ad.getAll();
                    String mota;
                    for (Account el : list) {
                        if (el.getMota().equals("1")) {
                            mota = "admin";
                        }
                        else
                        mota="user";
                %>
                <tr>
                    <td><%=el.getAccountID()%></td>
                    <td><%=el.getMail()%></td>
                    <td><%=el.getDiachID()%></td>
                    <td><%=el.getSodt()%></td>
                    <td><%=mota %></td>
                    <%
                        if(mota.equals("admin")){
                    %>
                    <td></td>
                    <% 
                        }else{               
                    %>
                    <td><a href="../../_web_project/deleteaccount?account=<%=el.getAccountID()%>">Delete</a></td>
                    <%  } %>
                </tr>
                <%
                    }
                %>
            </table>
            <br>
            <br>
            <a href="../../_web_project/list" style="margin-left: 50px;">Back to home page !</a>
        </form>
    </body>
</html>
