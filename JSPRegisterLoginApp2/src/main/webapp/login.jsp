<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String uname = request.getParameter("username");
String upass = request.getParameter("password");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pune ?useSSL=false", "root", "cdac");
PreparedStatement s = con.prepareStatement("select * from user where username=? and password=?");
s.setString(1, uname);
s.setString(2, upass);

ResultSet rs = s.executeQuery();
boolean flag = false;
if(rs.next()){
	flag = true;
}


s.close();
con.close();

if(flag){
	response.sendRedirect("home.jsp");
}else{
	response.sendRedirect("login_form.jsp");
}

%>