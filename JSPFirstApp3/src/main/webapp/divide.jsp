<%@page import="java.util.Date"%>
<%@ page errorPage="error.jsp"%>

<%@ include file="header.jsp" %>
<%="<h2>" + new Date() + "</h2"%>


<%!

    int result;

	void divide(int i, int j) {
		result = i / j;
	}

%>

<%

String p1 = request.getParameter("num1");
String p2 = request.getParameter("num2");

int a = Integer.parseInt(p1);
int b = Integer.parseInt(p2);

divide(a, b);

%>

<%=

"<h6>" + result + "</h6"

%>