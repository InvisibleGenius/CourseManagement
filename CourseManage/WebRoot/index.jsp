<span style="font-size:12px;"><span style="font-size:14px;"><%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>  
<%@ page contentType="text/html;charset=utf-8"%>  
<html>  
<head>  
<style type="text/css">  
table {  
    border: 2px #CCCCCC solid;  
    width: 720px;  
}  
  
td,th {  
    height: 30px;  
    border: #CCCCCC 1px solid;  
}  
</style>  
   <div align="center">  
        <br> <br> <br>  
        <th>
        <font size=6>
        <%  
            out.print("2015上学期计算机科学与技术开课计划书");  
        %> 
        </font>
        </th>
    </div> 
</head>  
<body>  
    <%  
        
        String driverName = "com.mysql.jdbc.Driver";  
       
        String userName = "root";  
        
        String userPasswd = "123456";  
        
        String dbName = "coursemanage";  
       
        String tableName = "sheet1";  
       
        String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="  
                + userName + "&password=" + userPasswd;  
        Class.forName("com.mysql.jdbc.Driver").newInstance();  
        Connection connection = DriverManager.getConnection(url);  
        Statement statement = connection.createStatement();  
        String sql = "SELECT * FROM " + tableName;  
        ResultSet rs = statement.executeQuery(sql);  
    %>  
    <br>  
    <br>  
    <table align="center">  
        <tr>  
            <th>  
                <%  
                    out.print("年级");  
                %>  
            </th>  
            <th>  
                <%  
                    out.print("专业");  
                %>  
            </th>  
            <th>  
                <%  
                    out.print("专业人数");  
                %>  
            </th>  
            <th>  
                <%  
                    out.print("课程名称");  
                %>  
            </th>  
             <th>  
                <%  
                    out.print("选修专业");  
                %>  
            </th>  
             <th>  
                <%  
                    out.print("学分");  
                %>  
            </th>  
             <th>  
                <%  
                    out.print("学时");  
                %>  
            </th>  
             <th>  
                <%  
                    out.print("实验学时");  
                %>  
            </th>  
             <th>  
                <%  
                    out.print("上机学时");  
                %>  
            </th>  
             <th>  
                <%  
                    out.print("起讫周序");  
                %>  
            </th>  
             <th>  
                <%  
                    out.print("任课教师");  
                %>  
            </th>  
              <th>  
                <%  
                    out.print("备注");  
                %>  
            </th>  
        </tr>  
  
        <%  
            while (rs.next()) {  
        %>  
        <tr>  
            <td>  
                <%  
                    out.print(rs.getString(1));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(2));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(3));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(4));  
                %>  
            </td> 
            <td>  
                <%  
                    out.print(rs.getString(5));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(6));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(7));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(8));  
                %>  
            </td>   
            <td>  
                <%  
                    out.print(rs.getString(9));  
                %>  
            </td>   
            <td>  
                <%  
                    out.print(rs.getString(10));  
                %>  
            </td>   
            <td>  
                <%  
                    out.print(rs.getString(11));  
                %>  
            </td>   
            <td>  
                <%  
                    out.print(rs.getString(12));  
                %>  
            </td>   
        </tr>  
        <%  
            }  
        %>  
    </table>  
    
    <%  
        rs.close();  
        statement.close();  
        connection.close();  
    %>  
</body>  
</html></span><span style="font-size:24px;color: rgb(255, 0, 0);">  
</span></span>  
