<jsp:useBean id="Loginid" class="com.ntt.sarvottam.Login" scope="session"></jsp:useBean>
<jsp:setProperty  name="Loginid" property="*"/> 

<%
	String s=request.getParameter("userName");
%>
 <%
 
 	if(Loginid.checkLogin())
 	{
		session.setAttribute("name",s);
		 
 		if(s.equalsIgnoreCase("admin"))
 		{
 			response.sendRedirect("admin.jsp");	
 		}
 		if(s.equalsIgnoreCase("customer1")||s.equalsIgnoreCase("customer2"))
 		{
 			response.sendRedirect("customer.jsp");
 		}
 	}
 	else                    
 	{
 		session.setAttribute("msg","INVALID USERNAME AND PASSWORD");
 		session.setAttribute("fname","loginspark.jsp");
 		response.sendRedirect("Error.jsp");
 	}
 
 %>