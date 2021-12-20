<%-- 
    Document   : Detail
    Created on : Jun 12, 2021, 9:04:42 PM
    Author     : Hieu Mau
--%>

<%@page import="entity.News"%>
<html>
    <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Detail</title>
            <link href="/J3.L.P0004/css/style.css" rel="stylesheet" type="text/css" />
        </head>
        <body> 
           <div class="container">
            <jsp:include page="Header.jsp"/>
            <div class="content">
                <div class="main">
                    <div class="tittle">
                        ${news.title}
                    </div>
                    <div class="text">
                        ${news.shortDes}
                    </div>
                    <div class="image">
                        <img src="images/${news.image}"/>
                    </div>
                    <div class="text">
                        ${news.description}
                    </div>
                    <div class="signature">
                        <div class="icon1"></div>
                        <div class="icon2"></div>
                       By ${news.writer} | ${news.dateConvert}
                    </div>
                </div>
                <jsp:include page="Right.jsp"/> 
            </div>
            <jsp:include page="Footer.jsp"/>
        </div>
    </body>
</html>