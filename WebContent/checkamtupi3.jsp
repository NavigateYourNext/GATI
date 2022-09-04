<%@page import="net.codejava.Customer" %>
<%@page import="net.codejava.UpiDAO" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Check Amount</title>
</head>
<body>
<%
String upii=session.getAttribute("UPI").toString();
String amtt=session.getAttribute("AMT").toString();
String amountt=session.getAttribute("AMOUNT").toString();

long ano=Long.valueOf(amtt);
int pass=Integer.valueOf(request.getParameter("amt"));

double amout=Double.valueOf(amountt);


Customer c=new Customer();
c.setAmount(amout);
c.setAccNo(ano);
c.setTp(pass);
c.setIFSC(upii);

UpiDAO ud=new UpiDAO();
boolean b=ud.checkBalance3(c);
if(b==false)
{
%>
<script type="text/javascript">
alert('Insufficient Fund or Password May Be Incorrect !');
function Redirect()
{
 window.location='http://localhost:8028/Easy_Transfer/AccountTransfer.jsp';	
}
setTimeout('Redirect()', 1000);
</script>
<%
}
else
{
%>
<script type="text/javascript">
alert('Transfer Success !');
<%session.setAttribute("UPI",amtt);%>
<%session.setAttribute("AMT",amout);%>
function Redirect()
{
 window.location="Success.jsp";	
}
setTimeout('Redirect()',500);
</script>
<%
}
%>


</body>
</html>