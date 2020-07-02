package com.missing;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
  
public class LoginDao {  
public static boolean validate(String name,String pass){  
boolean status=false; 
try {
	String url="jdbc:mysql://localhost:3306/demodb";
	String user="root";
	String password="prachi";
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(url, user, password);
	
PreparedStatement ps=con.prepareStatement(  
"select * from userreg where UserName=? and Password=?");  
ps.setString(1,name);  
ps.setString(2,pass);  
      
ResultSet rs=ps.executeQuery();  
status=rs.next();  
}catch(Exception e){System.out.println(e);}  
return status;  
}  
}  