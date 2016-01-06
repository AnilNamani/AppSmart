<%-- 
    Document   : index
    Created on : Dec 31, 2015, 11:55:54 AM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <title>JSP Page</title>
    </head>
    <body>
        <table width="100%" style="height:max-content;background-color:rgba(0, 0, 0, 0);"  >
            <tr>                <!--                    Header-->
                <td>
                    <img src="css/Images/logo.png" alt=""/></td>
                <td><jsp:include page="header.jsp"></jsp:include></td>
                </tr>                
                <tr>
                    <!--                    Left-->
                    <td width="10%"><jsp:include page="left.jsp"></jsp:include></td>

                    <!--                    Middle Content-->



                    <td width="80%" ></td>
                    <!--                    Right-->
                    <td width="10%" ><jsp:include page="right.jsp"></jsp:include></td>
                </tr>
                <!--                    Bottom-->
                <tr>
                    <td colspan="3" style="height:20px" ><jsp:include page="bottom.jsp" /></td>
            </tr>
        </table>
    </body>
</html>
