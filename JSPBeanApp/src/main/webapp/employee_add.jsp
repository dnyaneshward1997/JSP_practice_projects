
<%@page import="com.model.Employee"%>

<%

String p1 = request.getParameter("empId");
String p2 = request.getParameter("empName");
String p3 = request.getParameter("empSal");

int empId = Integer.parseInt(p1);
float salary = Float.parseFloat(p3);


Employee emp = new Employee();
emp.setEmpId(empId);
emp.setEmpName(p2);
emp.setSalary(salary);

session.setAttribute("e", emp);
response.sendRedirect("employee_info.jsp");
%>