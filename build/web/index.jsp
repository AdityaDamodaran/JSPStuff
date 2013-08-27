<%-- 
    Document   : index
    Created on : 22 Aug, 2013, 2:51:17 PM
    Author     : Darth
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <style>
            td{
                border:1px black solid;
}
            tr{
                border:1px black solid;
}
            table{
                border:1px black solid;
}


            </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="UD">
            <tsble>
                <tr>
                    <td>Name
                    </td><td><input type="text" name="name"></td>
                </tr>
<tr>
                    <td>Age
                    </td><td><input type="text" name="age"></td>
                </tr>
                <tr>
                    <td>Address
                    </td><td><input type="text" name="address"></td>
                </tr>
                <tr>
                    <td><input type="submit" ></td>
                </tr>
            </table>
        </form>
        <table>
            <thead>
            <th>Name</th><th>Age</th><th>Address</th>
            </thead>
            <tbody>

        <%
               Class.forName("com.mysql.jdbc.Driver");
          //Connection con=
      Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/wksp", "root", "root");
            PreparedStatement par = con.prepareStatement("select * from users");
            ResultSet res=par.executeQuery();
            while(res.next())
              {
  out.println("<tr><td>"+res.getString(1) +"</td><td>"+res.getString(2)+"</td><td>"+res.getString(3)+"</td></tr>");
             
       }
            con.close();
   

        %></tbody>
        </table>
    </body>
</html>
