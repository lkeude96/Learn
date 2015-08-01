<%@ page import="java.sql.*"%><%@ page import="java.io.*"%><%@ page import="com.mysql.*"%><?xml version="1.0"?>
<tours>
<%
	Connection connection = null;
	Statement statement = null;
	ResultSet result = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tours","root","root");
		statement = connection.createStatement();
		String s = "Select * from tour";
		result = statement.executeQuery(s);
		while(result.next()) {
			%>
			<tour>
				<tourId><% out.println(result.getString("tourID")); %></tourId>
				<tourTitle><% out.println(result.getString("tourTitle")); %></tourTitle>
				<packageId><% out.println(result.getString("packageId")); %></packageId>
				<packageTitle><% out.println(result.getString("packageTitle")); %></packageTitle>
				<description><% out.println(result.getString("description")); %></description>
				<price><% out.println(result.getString("price")); %></price>
				<difficulty><% out.println(result.getString("difficulty")); %></difficulty>
				<length><% out.println(result.getString("length")); %></length>
				<image><% out.println(result.getString("image")); %></image>
				<link><% out.println(result.getString("link")); %></link>
			</tour>	
			<% 
		}
	} 
	catch(SQLException e) {
		out.println("error connecting to database");
	}
%>
</tours>