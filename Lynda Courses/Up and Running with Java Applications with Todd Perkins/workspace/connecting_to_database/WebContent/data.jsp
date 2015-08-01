<%@ page import="java.sql.*"%><%@ page import="java.io.*"%><%@ page import="com.mysql.*"%><?xml version="1.0"?>
<tours>
<%
	Connection connection = null;
	Statement statement = null;
	ResultSet result = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tours","root","root");
		out.println("connected to database");
	} 
	catch(SQLException e) {
		out.println("error connecting to database");
	}
%>
</tours>