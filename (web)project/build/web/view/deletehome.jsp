<%-- 
    Document   : deletehome
    Created on : Oct 29, 2020, 6:11:07 PM
    Author     : HaNoi
--%>
<%@page import="model.Account"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Home"%>
<%@page import="java.util.List"%>
<%@page import="dal.homeDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: antiquewhite">
        <h1>Xóa hoặc sửa phòng trọ của ${sessionScope.admin.accountID}</h1>
        <form action="../../_web_project/deletehome">
            <table border="1px" width="100%">
                <tr>
                    <th>chủ nhà id</th>
                    <th>phong_id</th>
                    <th>image 1</th>
                    <th>image 2</th>
                    <th>image 3</th>
                    <th>giá cả</th>
                    <th>mô tả</th>
                    <th>status</th>
                    <th>date</th>
                    <th>Delete</th>
                    <th>Update</th>
                </tr>
                <%  
                    Account account= (Account)session.getAttribute("admin");
                    String a=account.getAccountID();
                    homeDAO dAO= new homeDAO();
                    List<Home>list= new ArrayList<Home>();
                    list=dAO.getAllbyid(a);
                    for (Home el : list) {
                          %>
                          <tr>
                              <td><%=el.getAccount_id() %></td>
                              <td><%=el.getHome_id()%></td>                         
                              <td><img src="<%=el.getImage()%>" alt="" style="height: 100px;width: 200px; margin-top: 10px;"/></td>
                              <td><img src="<%=el.getImage1()%>" alt="" style="height: 100px;width: 200px; margin-top: 10px;"/></td>
                              <td><img src="<%=el.getImage2()%>" alt="" style="height: 100px;width: 200px; margin-top: 10px;"/></td>
                              <td><%=el.getPrice()%></td>
                              <td><%=el.getMota()%></td>
                              <td><%=el.getStatus()%></td>
                              <td><%=el.getDate()%></td>
                              <td><a href="../../_web_project/deletehome?idhome=<%=el.getHome_id()%>">Delete</a></td>
                              <td><a href="EditHomepost.jsp?homeid=<%=el.getHome_id()%>">Update</a></td>
                          </tr>
                <%  
 
                        }
                %>
            </table>
        </form>
            <a href="../../_web_project/list" style="margin-left:  50px">Back to Home page</a>
    </body>
</html>
