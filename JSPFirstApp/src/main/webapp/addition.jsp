<%!

    int result;
	public void add(int i, int j) {
		result = i + j;
	}
	
%>

<%

String s1 = request.getParameter("num_1");
String s2 = request.getParameter("num_2");

int x = Integer.parseInt(s1);
int y = Integer.parseInt(s2);

add(x,y);
	
%>

<%=

result
	
%>