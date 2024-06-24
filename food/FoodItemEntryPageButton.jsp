<%
 String s1=request.getParameter("button");
 boolean b=false;
 if(s1.equals("Submit"))
 {
  b=true;
 }
 if(b)
 {
  RequestDispatcher rd=request.getRequestDispatcher("FoodItemEntry.jsp");
  rd.forward(request,response);
 }
 else
 {
  RequestDispatcher rd=request.getRequestDispatcher("/Homepage.htm");
  rd.forward(request,response);
 }
%>