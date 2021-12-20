<%-- 
    Document   : Right
    Created on : Jun 12, 2021, 9:11:26 PM
    Author     : Hieu Mau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.News"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Right</title>
        <link href="/J3.L.P0004/css/right.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div class="right">
            <div class="newst">
                <div class="titleNews">
                    Digital News
                </div>
                <div class="contentNews">
                    ${recent.shortDes}
                </div>
            </div>
            <div class="newst">
                <div class="titleNews">
                    Search
                </div>
                <form action="search?index=1" method="post">
                    <input class="searchBox" type="text" name="txtSearch" id="txtSearch" size="15" required>
                    <input class="searchButton" type="submit"  name="btnGo" value="Go">
                </form>                        
            </div>
            <div class="newst">
                <div class="titleNews">
                    <span>Last Articles</span><br>
                </div>
                <c:forEach items="${top5}" var="i">
                    <div class="lastArticles">
                        <a href="detail?id=${i.id}">${i.title}</a>
                    </div>
                </c:forEach>
            </div>
        </div>    
    </body>
</html>
