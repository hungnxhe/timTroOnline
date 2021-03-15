<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="list"></a>


    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <c:if test="${sessionScope.admin==null}">
                <li class="nav-item active">
                    <a class="nav-link" href="list">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="view/register.jsp">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="view/login.jsp">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="view/tintuc.jsp">Tin Tức</a>
                </li>
            </c:if>
            <c:if test="${sessionScope.admin!=null}">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../../_web_project/logout">Logout</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="view/tintuc.jsp">Tin Tức</a>
                </li>
                <c:if test="${sessionScope.admin.mota==2}">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            manager for homer
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="view/addnewhome.jsp">Add new Home post</a>
                            <a class="dropdown-item" href="view/deletehome.jsp?idac=${sessionScope.admin.accountID}">Delete or Update Home post</a>
                            <a class="dropdown-item" href="view/myprofile.jsp">View my profile</a>
                        </div>
                    </li>
                </c:if>
                <c:if test="${sessionScope.admin.mota==1}">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            manager for admin
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="view/deleteaccount.jsp">Delete Account</a>
                            <a class="dropdown-item" href="view/deletehomeForadmin.jsp">Delete home post</a>
                            <a class="dropdown-item" href="view/addtintuc.jsp">Thêm tin tức</a>
                            <a class="dropdown-item" href="view/deletetintuc.jsp">Xóa tin tức</a>
                        </div>
                    </li>
                </c:if>
                <c:if test="${sessionScope.admin.mota==3}">
                    <li class="nav-item dropdown">
                            <a class="dropdown-item" href="view/deleteaccount.jsp">My cart</a>
                    </li>
                </c:if>
                <h5 style="margin: auto; color: #45a049; margin-left: 100px;">${sessionScope.admin.accountID}   </h5>  
            </c:if>
        </ul>
        <%
            String content = request.getParameter("search");
            if (content == null) {
                content = "";
            }
        %>
        <div class="form-inline my-2 my-lg-0" style="margin-left: auto; ">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="search" value="<%=content%>">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit" style="width: 70px">Search</button>
        </div>
        <div class="form-inline my-2 my-lg-0" style="margin-left:8px; ">
            <select name="select">
                <option>Search By Address</option>
                <option>Search By Price(+-200k)</option>
            </select>
        </div>
    </div>
</nav>
