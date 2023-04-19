<jsp:useBean id="student" class="com.model.Student" scope="session"></jsp:useBean>


<jsp:setProperty name="student" param="stdId" property="stdId" />
<jsp:setProperty name="student" param="stdName" property="stdName" />
<jsp:setProperty name="student" param="stdMobNumber"
	property="mobNumber" />


<%
response.sendRedirect("student_info.jsp");
%>