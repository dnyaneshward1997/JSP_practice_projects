<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String uname = request.getParameter("username");
String upass = request.getParameter("password");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pune ?useSSL=false", "root", "cdac");
PreparedStatement s = con.prepareStatement("insert into user values(?,?)");
s.setString(1, uname);
s.setString(2, upass);

int i = s.executeUpdate();

s.close();
con.close();
response.sendRedirect("login_form.jsp");
%>