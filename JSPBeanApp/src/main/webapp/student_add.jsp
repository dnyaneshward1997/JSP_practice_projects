<%@page import="com.model.Student"%>
<%


String s1 = request.getParameter("stdId");
String s2 = request.getParameter("stdName");
String s3 = request.getParameter("stdMobNumber");

int stdId = Integer.parseInt(s1);
int mobNumber = Integer.parseInt(s3);


Student student = new Student();
student.setStdId(stdId);
student.setStdName(s2);
student.setMobNumber(mobNumber);

session.setAttribute("s", student);
response.sendRedirect("student_info.jsp");

%>