<%@page import="net.codejava.Customer" %>
<%@page import="net.codejava.LoginDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Transfer Now</title>
</head>
<style>
h5
{
 position:absolute;
 left:820px;
 top:145px;
 font-size:20px;
}
.imgcontainer 
{
    text-align: center;
    margin: 10px 0 10px 0;
}
.container 
{
    padding: 16px;
    width:100%;
   margin-top:80px;
    
}
th
{
 color:green;
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
button
{
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    align:center;
}
.signupbtn 
{
    width: auto;
    padding: 10px 18px;
    background-color: blue;
    position:absolute;
    top:60%;
    left:55%;
    
}
.contactbtn 
{
    width: auto;
    padding: 10px 18px;
    background-color: red;
    position:absolute;
    top:60%;
    left:40%;
    
}

.time
{
 padding:20px;
 color:red;
 position:absolute;
 top:7%;
 left:72%;
}

h7
{
 
 position: absolute;
 left: 660px;
 top: 80px;
 color:violet;
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
double d=0.0;
String Mno1=session.getAttribute("Mob").toString();
String IMEI1=session.getAttribute("Tp").toString();
Long Mno2=Long.valueOf(Mno1);
Long Tp2=Long.valueOf(IMEI1);

Customer c=new Customer();
c.setMno(Mno2);
LoginDAO ld=new LoginDAO();
d=ld.getBalance(c);
%>

<div class="container">
<table align="center" style="border:3px solid black;padding:20px;border-spacing:5px;">
<tr>
<th><label><b>Available Balance:</b></label></th>
<th><label><b><input type="text" name="bal" value="&#8377; <%=d%>" size="30" disabled></b></label>
</tr>
</table>
</div>

<form action="HelloServlet" method="get">

<div class="container">
   <button type="submit" class="contactbtn" name="button" value="Transfer">Transfer Now</button>
 <%session.setAttribute("MOB", Mno2); %>
<%session.setAttribute("TP", Tp2); %>
  </div>
  
<div class="container">
   <button type="submit" class="signupbtn" name="button" value="LastTransactions">Last Transactions</button>
  <%session.setAttribute("MOB", Mno2); %>
  </div>

<h5><a href="LoginWindow.html">LogOut</a></h5>

</form>
</body>
</html>
