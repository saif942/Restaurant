<%
 String s1=request.getParameter("button");
 boolean b=false;
 if(s1.equals("Submit"))
 {
  b=true;
 }
 if(b)
 {
  RequestDispatcher rd=request.getRequestDispatcher("EmployeeSignUp.jsp");
  rd.forward(request,response);
 }
 else
 {
  RequestDispatcher rd=request.getRequestDispatcher("../common/Homepage.jsp");
  rd.forward(request,response);
 }
%>