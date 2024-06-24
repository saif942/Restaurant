<%
 String s1=request.getParameter("button");
 boolean b=false;
 if(s1.equals("Update"))
 {
  b=true;
 }
 if(b)
 {
  RequestDispatcher rd=request.getRequestDispatcher("CustomerDetailsUpdate.jsp");
  rd.forward(request,response);
 }
 else
 {
  RequestDispatcher rd=request.getRequestDispatcher("CustomerProfilePage.jsp");
  rd.forward(request,response);
 }
%>