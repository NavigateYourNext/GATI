<%@page import="net.codejava.Customer" %>
<%@page import="net.codejava.UpiDAO" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Benificiary Details</title>
</head>
<style>

.imgcontainer 
{
    text-align: center;
    margin: 10px 0 10px 0;
}

.avatar 
{
    width: 20%;
    
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

button:hover 
{
    opacity: 0.8;
}
.time
{
 padding:20px;
 color:red;
 position:absolute;
 top:7%;
 left:72%;
}


button
{
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    align:center
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

h7
{
 
 position: absolute;
 left: 660px;
 top: 80px;
 color:violet;
}
.back
{
 position:absolute;
 top:570px;
 left:490px;
}
</style>

<%
String upi=session.getAttribute("UPI").toString();
long upii=Long.valueOf(upi);

Customer c=new Customer();
c.setAadharNo(upii);

UpiDAO ud=new UpiDAO();
String name=ud.verifyAadhar(c);
%>
<body style="background-color:#fffff0;">

<form action="pass1.jsp" method="post">

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

<div class="imgcontainer">
<img src="aadhar.jpg" alt="Avatar" class="avatar">
</div>

<div class="container">

<table align="center" style="border:3px solid black;padding:20px;border-spacing:5px;">
<tr>
<th><label><b>Benificiary Name  </b></label></th>
<td><input type="text" name="UPI" value="<%=name%>" disabled></td>
</tr>
<tr>
<th><label><b>Enter Amount  </b></label></th>
<td><input type="text" pattern=[0-9]{1,6} title="[0-9]" name="amt" maxlength="6" placeholder="Enter Amount" required></td>
</tr>
<tr>
<td colspan="7"><button type="Submit">Submit</button></td>
</tr>
</table>
</div>
<%session.setAttribute("UPI", upii); %>
</form>
<div class="back">
<a href="http://localhost:8028/Easy_Transfer/Aadhar.html">Back</a>
</div>
</body>
</html>