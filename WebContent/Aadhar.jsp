<%@page import="net.codejava.Customer" %>
<%@page import="net.codejava.UpiDAO" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Aadhar</title>
</head>
<body>
<%
String up=request.getParameter("UPI");
long upi=Long.valueOf(up);


Customer c=new Customer();
c.setAadharNo(upi);

UpiDAO upd=new UpiDAO();
String msg=upd.verifyAadhar(c);
System.out.println(msg);
if(msg.equals(""))
{
%>
<script type="text/javascript">   
alert('Invalid Aadhar !');
function Redirect() 
{
   window.location="http://localhost:8028/Easy_Transfer/Aadhar.html";
}

document.write("You will be redirected to Aadhar page in 1 sec.");
setTimeout('Redirect()', 1000);
</script>
<%
}
else
{
%>
<script type="text/javascript">   
alert('Valid Aadhar !');
function Redirect() 
{
   window.location="AadharTransfer.jsp";
}
setTimeout('Redirect()', 1000);
</script>
<%session.setAttribute("UPI", upi); %>
<%
}
%>
</body>
</html>