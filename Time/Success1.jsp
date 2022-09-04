<%@page import="net.codejava.Customer" %>
<%@page import="net.codejava.SuccessDAO" %>
<%@page import="net.codejava.Success" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success</title>
</head>
<style>

.imgcontainer 
{
    text-align: center;
    margin: 10px 0 10px 0;
}

.avatar 
{
    width: 10%;
    border-radius: 50%;
}
.container 
{
    padding: 16px;
}

h1
{
 color:#c71585;
 text-align:center;
}


.time
{
 padding:20px;
 color:red;
 position:absolute;
 top:7%;
 left:72%;
}


input[type=text]
{
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    color:red;
}

</style>
</head>


<body style="background-color:#fffff0;">

<h1>Transfer Success</h1>

<div class="time">
<script type="text/javascript">
document.write ('<p>Current time is: <span id="date-time">', new Date().toLocaleString(), '<\/span>.<\/p>')
if (document.getElementById) onload = function () {
	setInterval ("document.getElementById ('date-time').firstChild.data = new Date().toLocaleString()", 50)
}
</script>
</div>

<div class="imgcontainer">
<img src="E:\Akshay Docs\Sample\Easy Transfer\WebContent\smile.jpg" alt="Avatar" class="avatar">
</div>

<%
int tid=0;
String uppi="";
String amt="";
long upii=0000000000;
double amtt=0.0;
%>

<%
if(session.getAttribute("UPI")!=null)
uppi=session.getAttribute("UPI").toString();
if(session.getAttribute("AMT")!=null)
amt=session.getAttribute("AMT").toString();


amtt=Double.valueOf(amt);

Success c=new Success();
c.setBenificiary(uppi);
c.setAmount(amtt);

SuccessDAO sd=new SuccessDAO();
tid=sd.getTransferId(c);
%>

<div class="container">

<table align="center" style="border:3px solid black;padding:20px;border-spacing:5px;">
<tr>
<th><label><b>Transfer ID:</b></label></th>
<td><input type="text" name="tid" value="<%=tid%>" disabled></td>
</tr>
<tr>
<th><label><b>Benificiary Details:</b></label></th>
<td><input type="text" name="bname" value="<%=c.getBenificiary()%>" disabled></td>
</tr>
<tr>
<th><label><b>Amount:</b></label></th>
<td><input type="text" name="tid" value="<%=c.getAmount()%>" disabled></td>
</tr>

</div>
</table>

</body>
</html>