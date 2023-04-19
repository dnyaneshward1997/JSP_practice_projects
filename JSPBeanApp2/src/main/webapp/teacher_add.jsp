<jsp:useBean id="teacher" class="com.model.Teacher" scope="session"></jsp:useBean>

<jsp:setProperty name="teacher" property="*"/>


<% 

response.sendRedirect("teacher_info.jsp");

%>
