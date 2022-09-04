<%@page import="net.codejava.Customer" %>
<%@page import="net.codejava.UpiDAO" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account</title>
</head>
<body>
<%
String ifsc="";
%>
<%
if(request.getParameter("ifsc")!=null)
{
	 ifsc=request.getParameter("ifsc");
}
long ano=Long.valueOf(request.getParameter("ano"));

Customer c=new Customer();
c.setIFSC(ifsc);
c.setAccNo(ano);

UpiDAO upd=new UpiDAO();
String msg=upd.verifyAccount(c);
System.out.println(msg);
if(msg.equals(""))
{
%>
<script type="text/javascript">   
alert('Invalid Benificiary Details !');
function Redirect() 
{
   window.location="http://localhost:8028/Easy_Transfer/Account.html";
}

document.write("You will be redirected to Account page in 1 sec.");
setTimeout('Redirect()', 1000);
</script>
<%
}
else
{
%>
<script type="text/javascript">   
alert('Valid Benificiary !');
function Redirect() 
{
   window.location="AccountTransfer.jsp";
}
setTimeout('Redirect()', 1000);
</script>
<%session.setAttribute("ANO", ano); %>
<%session.setAttribute("IFSC", ifsc); %>
<%
}
%>
</body>
</html>