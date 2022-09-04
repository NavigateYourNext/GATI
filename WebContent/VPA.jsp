<%@page import="net.codejava.Customer" %>
<%@page import="net.codejava.UpiDAO" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VPA</title>
</head>
<body>
<%
String upi="";
%>
<%
if(request.getParameter("UPI")!=null)
{
	 upi=request.getParameter("UPI");
}
Customer c=new Customer();
c.setVPA(upi);

UpiDAO upd=new UpiDAO();
String msg=upd.verifyVPA(c);
System.out.println(msg);
if(msg.equals(""))
{
%>
<script type="text/javascript">   
alert('Invalid VPA !');
function Redirect() 
{
   window.location="http://localhost:8028/Easy_Transfer/UPI.html";
}

document.write("You will be redirected to VPA page in 1 sec.");
setTimeout('Redirect()', 1000);
</script>
<%
}
else
{
%>
<script type="text/javascript">   
alert('Valid VPA !');
function Redirect() 
{
   window.location="VpaTransfer.jsp";
}
setTimeout('Redirect()', 1000);
</script>
<%session.setAttribute("UPI", upi); %>
<%
}
%>
</body>
</html>