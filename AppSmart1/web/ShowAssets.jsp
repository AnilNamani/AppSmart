<%-- 
    Document   : Show Assets
    Created on : Dec 29, 2015, 10:42:56 AM
    Author     : Anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="AppSmart.*" %>
<%@page import="AppSmart.DBCon" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <title>Show Assets</title>
    </head>
    <body>
        <table width="max-width">
            <tr>
                test123
                <!--                    Header-->
                <td colspan="3" ><jsp:include page="header.jsp"></jsp:include></td>
                </tr>
                <!--                    Left-->
                <tr>
                    <td width="10%" ><jsp:include page="left.jsp"></jsp:include></td>
                    <!--                    Middle Content-->

                    <td width="80%"  >
                        <div align="center" style="overflow-style:auto;height:max-content" >                            
                            <h1 style="">Assets Details
                            </h1><input type="submit" value="ADD NEW" onclick="location.href = 'AddAssets.jsp'" />  
                             <form action="DeleteAssets"  method="POST">
                                <table border="1" style="background-color:#1e4f8a;">
                                <% ResultSet rs = DBCon.getDBPreparedStatement("Select * from dbo.tbl_Assets").executeQuery();
                                    ResultSetMetaData rsmd = rs.getMetaData();
                                %>
                                <thead id="tbldata_thead">
                                <td><b>SNO</b></td>
                                <td><b><%= rsmd.getColumnName(1)%></b></td>
                                <td><b><%= rsmd.getColumnName(2)%></b></td>
                                <td><b><%= rsmd.getColumnName(3)%></b></td>
                                <td><b><%= rsmd.getColumnName(4)%></b></td>
                                <td><b><%= rsmd.getColumnName(5)%></b></td>
                                <td><b><%= rsmd.getColumnName(6)%></b></td>
                                <td colspan="2"><b>EDIT / DELETE </b></td>
                                </thead>
                                <tbody style="color:white">
                                    <%

                                        while (rs.next()) {

                                    %>
                                    <tr>
                                        <td><%= rs.getRow()%></td>
                                        <td><%= rs.getString(1)%></td>
                                        <td><%= rs.getString(2)%></td>
                                        <td><%= rs.getString(3)%></td>
                                        <td><%= rs.getString(4)%></td>
                                        <td><%= rs.getString(5)%></td>
                                        <td><%= rs.getString(6)%></td>
                                        <td style="text-align: center"><input type="submit" value="EDIT"   name="btnEdit<%= rs.getString(1)%>" style="text-align:center"  /></td>
                                        <td style="text-align: center"><input type="submit" value="DELETE" name="btnDel<%= rs.getString(1)%>" style="text-align:center" /></td>
                                    </tr>
                                    <%
                                        }
                                        rs.close();
                                    %>
                                </tbody>
                            </table>

                    </div>
                    </form>
                </td>
                <!--                    Right-->
                <td width="80%" style="align:right;"><jsp:include page="right.jsp"></jsp:include></td>
                </tr>
                <!--                    Bottom-->
                <tr>
                    <td colspan="3" style="height:20px" ><jsp:include page="bottom.jsp" /></td>
            </tr>

        </table>


    </body>
</html>
