<%-- 
    Document   : thongtin
    Created on : Nov 9, 2020, 11:39:19 PM
    Author     : HaNoi
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.tintuc"%>
<%@page import="java.util.List"%>
<%@page import="dal.TintucDAO"%>
<%@page import="dal.TintucDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: antiquewhite">
        <form ><div>
                <h1 style="margin-top: 20px; margin-left: 10px; ">Chi Tiết Tin</h1><br>
                <a style="margin-left: 20px;"href="tintuc.jsp"><h2>Back to List News</h2></a>
        <%     String id=request.getParameter("matinn");
                TintucDAO tdao = new TintucDAO();
                List<tintuc> list = new ArrayList<>();
                list = tdao.getAlbyid(id);
                for (tintuc el : list) {
                    %>
                    <div style="text-align: center;">
                    <img src="<%=el.getAnh() %>" style="height: 400px; width: 1000px;"><br>
                    <textarea style="height: 500px; width: 1000px;" readonly>                        
                        <%=el.getNoidung() %>
                    </textarea>
                    </div>
        <%
                }
            %>
            </div>
            </form>
    </body>
</html>
