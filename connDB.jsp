<%@ page contentType="text/html;charset=GBK" language="java" errorPage="" %>

<%@ page import="java.sql.*" %>



<html>



<head>

  <title>查询Oracle测试</title>

</head>



<body>

<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","test","test");
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery("select * from user_tables");
%>

<table bgcolor="#9999dd" border="1" width="500">

    <% while(rs.next()){ %>

    <tr>

        <td><%=rs.getString(1)%></td>

        <td><%=rs.getString(2)%></td>

        <td><%=rs.getString(3)%></td>

    </tr>

    <% } %>

<table>

</body>



</html>
