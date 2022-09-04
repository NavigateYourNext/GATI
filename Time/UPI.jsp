<%@page import="net.codejava.Customer" %>
<%@page import="net.codejava.UpiDAO" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UPI</title>
</head>
<body>


<%
String up=request.getParameter("UPI");
long upi=Long.valueOf(up);


Customer c=new Customer();
c.setUpi(upi);

UpiDAO upd=new UpiDAO();
String msg=upd.verifyUPI(c);
System.out.println(msg);
if(msg.equals(""))
{
%>
<script type="text/javascript">   
alert('Invalid UPI !');
function Redirect() 
{
   window.location="http://localhost:8028/Easy_Transfer/UPI.html";
}

document.write("You will be redirected to UPI page in 1 sec.");
setTimeout('Redirect()', 1000);
</script>
<%
}
else
{
%>
<script type="text/javascript">   
alert('Valid UPI !');
function Redirect() 
{
   window.location="UpiTransfer.jsp";
}
setTimeout('Redirect()', 1000);
</script>
<%session.setAttribute("UPI", upi); %>
<%
}
%>
</body>
</html>