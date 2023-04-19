 <%@page import="com.cdac.service.ExpenseServiceImpl"%>
<%@page import="com.cdac.service.ExpenseService"%>

<jsp:useBean id="expense" class="com.cdac.model.Expense"></jsp:useBean>
 
 <jsp:setProperty name="expense" property="*" />

<%

ExpenseService expenseService = new ExpenseServiceImpl ();
expenseService.add(expense);
response.sendRedirect("expense_add_form.jsp");

%>

