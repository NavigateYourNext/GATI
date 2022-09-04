<%@page import="net.codejava.Customer" %>
<%@page import="net.codejava.LoginDAO" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Window</title>
</head>
<body>
<%
Long mob=Long.valueOf(request.getParameter("Mob"));
int tp=Integer.valueOf(request.getParameter("Password"));

Customer c=new Customer();
c.setMno(mob);
c.setTp(tp);

LoginDAO ld=new LoginDAO();
String msg=ld.checkCust(c);
if(msg.equals("Invalid User"))
{
%>

<script type="text/javascript">   
alert('Login Failed !');
function Redirect() 
{
   window.location="LoginWindow.html";
}

document.write("You will be redirected to login page in 1 sec.");
setTimeout('Redirect()', 1000);
</script>
<%
}
else if(msg.equals("Valid User"))
{
%>
<script type="text/javascript">
	alert('Login Success !');
	function Redirect() 
    {
       window.location="Balance.jsp";
    }
    
    document.write("You will be redirected to transfer page in 1 sec.");
    setTimeout('Redirect()', 1000);
</script>
<%session.setAttribute("Mob", mob); %>
<%session.setAttribute("Tp",tp); %>
<%
}
else
{
%>
<script type="text/javascript">
	alert('Login Failed !');
</script>
<%
}
%>

</body>
</html>