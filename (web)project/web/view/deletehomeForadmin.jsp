<%-- 
    Document   : deletehomeForadmin
    Created on : Nov 7, 2020, 10:43:59 AM
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
        <form>
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
                </tr>
                <%  
                    Account account= (Account)session.getAttribute("admin");
                    homeDAO dAO= new homeDAO();
                    List<Home>list= new ArrayList<Home>();
                    list=dAO.getAll();
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
                              <td><a href="../../_web_project/deletehomeforad?idhome=<%=el.getHome_id()%>">Delete</a></td>
                          </tr>
                <%  
 
                        }
                %>
            </table>
        </form>
            <a href="../../_web_project/list" style="margin-left:  50px">Back to Home page</a>
    </body>
</html>