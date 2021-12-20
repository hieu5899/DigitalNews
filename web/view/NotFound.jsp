<%-- 
    Document   : Error
    Created on : Jun 12, 2021, 9:10:28 PM
    Author     : Hieu Mau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entity.News"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Not Found</title>
        <link href="/J3.L.P0004/css/style.css" rel="stylesheet" type="text/css" />
    </head>
    <body> 
        <div class="container">
            <jsp:include page="Header.jsp"/>
            <div class="content">
                <div class="main">
                    <div class="tittle">
                        <h1 style="color: red; text-align: center" a>ERROR!</h1>
                        <h1 style="color: red; text-align: center" a>News Not Found!</h1>
                    </div>
                </div>
                <jsp:include page="Right.jsp"/> 
            </div>
            <jsp:include page="Footer.jsp"/>
        </div>
    </body>
</html>
