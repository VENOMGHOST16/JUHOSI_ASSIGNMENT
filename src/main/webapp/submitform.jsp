<jsp:useBean id="cust" class="com.ntt.sarvottam.CustomerInput" scope="session"></jsp:useBean>
<jsp:setProperty  name="cust" property="*"/>

<%
	
	String req=request.getParameter("Requestshipment");
	String track=request.getParameter("Trackid");
	String spec=request.getParameter("Specific");
	String check=request.getParameter("Checklist"); 
	
	if(cust.insert((String)session.getAttribute("name"),req,track,spec,check))
	{
		session.setAttribute("formSubmitted",true);
		
		response.sendRedirect("customer.jsp");
	}
	else
	{
		response.sendRedirect("error.html");
	}
%>