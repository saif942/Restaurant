<%@page session="false"%>
<%
	HttpSession session = request.getSession(false);
	if(session==null)
	{
	 out.println("The Session You Are Looking For Is Expired");
	 RequestDispatcher rd=request.getRequestDispatcher("LoginPage.jsp");
	 rd.include(request,response);
	}
	else
	{
	  session.invalidate();
	  RequestDispatcher rd=request.getRequestDispatcher("Homepage.jsp");
	  rd.include(request,response);
	}
%>