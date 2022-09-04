<%@page import="net.codejava.Customer" %>
<%@page import="net.codejava.SuccessDAO" %>
<%@page import="net.codejava.Success" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Last Transactions</title>
</head>
<style>
.imgcontainer 
{
    text-align: center;
    margin: 10px 0 10px 0;
}
h3
{
 color:red;
 position: absolute;
 left: 440px;
 top: 180px;
}
h7
{
 
 position: absolute;
 left: 660px;
 top: 80px;
 color:violet;
}

h4
{
 position:absolute;
 top:320px;
 left:430px;
}

#a
{
 position:absolute;
 top:320px;
 left:900px;
}

.time
{
 padding:20px;
 color:red;
 position:absolute;
 top:7%;
 left:72%;
}
.container 
{
    padding: 16px;
    margin-top:100px;
}
</style>
<body>

<div class="imgcontainer">
<img src="Gati.png" height="100" width="300"></img>
</div>
<h7>A small step towards DIGITALIZATION !</h7>

<div class="time">
<script type="text/javascript">
document.write ('<p>Current time is: <span id="date-time">', new Date().toLocaleString(), '<\/span>.<\/p>')
if (document.getElementById) onload = function () {
	setInterval ("document.getElementById ('date-time').firstChild.data = new Date().toLocaleString()", 50)
}
</script>
</div>

<%
String mob=session.getAttribute("MOB").toString();
long mno=Long.valueOf(mob);

Customer c=new Customer();
c.setMno(mno);

SuccessDAO sd=new SuccessDAO();
Success sd1=new Success();
sd1=sd.viewDetails(c);
%>
<div class="container">

<table align="center" style="border:3px solid black;padding:20px;border-spacing:5px;">
<tr>
<th><label><b>Transfer ID</b></label></th>
<th><label><b>Benificiary Details</b></label></th>
<th><label><b>Amount</b></label></th>
<th><label><b>Status</b></label></th>
</tr>
<tr>
<td>GATTRANSUSE<%=sd1.getTid()%></td>
<td><%=sd1.getBenificiary()%></td>
<td><%=sd1.getAmount()%></td>
<td><%=sd1.getStatus()%></td>
</tr>
</table>
</div>
<h3>Below are the Last Transactions:</h3>
<h4>
<a href="http://localhost:8028/Easy_Transfer/Balance.jsp">Back</a>
</h4>
<h4 id="a">
<a href="http://localhost:8028/Easy_Transfer/LoginWindow.html">LogOut</a>
</h4>
</body>
</html>