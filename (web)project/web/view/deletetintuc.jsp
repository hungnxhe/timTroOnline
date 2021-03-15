<%-- 
    Document   : deletetintuc
    Created on : Nov 7, 2020, 10:38:24 PM
    Author     : HaNoi
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.tintuc"%>
<%@page import="java.util.List"%>
<%@page import="dal.TintucDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: antiquewhite;">
        <h1>Xóa Tin tức ${sessionScope.admin.accountID}</h1>
        <form>
            <table border="1px" width="100%">
                <tr>
                    <th>Mã tin</th>
                    <th>Tiêu đề</th>
                    <th>Lời dẫn</th>
                    <th>Ảnh</th>
                    <th>Nội dung</th>
                </tr>
                <%
                    TintucDAO tdao = new TintucDAO();
                    List<tintuc> list = new ArrayList<>();
                    list = tdao.getAll();
                    for (tintuc el : list) {
                %>
                
                <tr>
                    <td><%=el.getMa()%></td>
                    <td><%=el.getTieude()%></td>                         
                    <td><%=el.getLoidan()%></td>
                    <td><img src="<%=el.getAnh()%>" style="height: 300px; width: 300px;"></td>
                    <td><%=el.getNoidung()%></td>
                    <td><a href="../../_web_project/deletetintuc?mabai=<%=el.getMa()%>">Delete</a></td>
                </tr>
      
                <%

                    }
                %>
            </table>
        </form>
        <a href="../../_web_project/list" style="margin-left:  50px">Back to Home page</a>
    </body>
</html>
