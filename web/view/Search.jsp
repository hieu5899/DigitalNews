<%-- 
    Document   : Search
    Created on : Jun 12, 2021, 9:12:08 PM
    Author     : Hieu Mau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="entity.News"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Result</title>
        <link href="/J3.L.P0004/css/style.css" rel="stylesheet" type="text/css" />
        
    </head>
    <body>
        <div class="container">
            <jsp:include page="Header.jsp"/>
            <div class="content">
                <div class="main">
                    <table>
                        <c:forEach items="${list}" var="i">
                            <tr>
                                <td colspan="2">
                                    <div class="tittle">
                                        <a id="showTitle" href="detail?id=${i.id}">${i.title}</a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="image_search">
                                        <a href="detail?id=${i.id}">   
                                            <img src="images/${i.image}" alt=""/>
                                        </a>
                                    </div>
                                </td>
                                <td style="vertical-align: baseline">
                                    <div class="text_search">
                                        ${i.shortDes}
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                    <div class="paging">
                        <c:if test="${maxPage > 1}">
                            <c:forEach begin="1" end="${maxPage}" var="x">
                                <a class="${x==index?"active":""}" href="search?index=${x}">${x}</a>
                            </c:forEach>
                        </c:if>
                    </div>
                </div> 
                <jsp:include page="Right.jsp"/> 
            </div>
            <jsp:include page="Footer.jsp"/>
        </div>
    </body>
</html>

