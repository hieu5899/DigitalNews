<%-- 
    Document   : Home
    Created on : Jun 12, 2021, 9:09:52 PM
    Author     : Hieu Mau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entity.News"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home</title>
        <link href="/J3.L.P0004/css/style.css" rel="stylesheet" type="text/css" />
    </head>
    <body> 
        
        <div class="container">
            <jsp:include page="Header.jsp"/>
            <div class="content">
                <div class="main">
                    <div class="tittle">
                        ${recent.title}
                    </div>
                    <div class="shortDes">
                        ${recent.shortDes}
                    </div>
                    <div class="image">
                        <img src="images/${recent.image}"/>
                    </div>
                    <div class="text">
                        ${recent.description}
                    </div>
                    <div class="signature">
                        <div class="icon1"></div>
                        <div class="icon2"></div>
                        By ${recent.writer} | ${recent.dateConvert}
                    </div>
                </div>
                <jsp:include page="Right.jsp"/> 
            </div>
            <jsp:include page="Footer.jsp"/>
        </div>
    </body>
</html>

