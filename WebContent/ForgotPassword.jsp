<%@page import="net.codejava.Customer"%>
<%@page import="net.codejava.CusForgot"%>
<%@page isErrorPage="true" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forgot Password</title>
</head>
<style>
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

input[type=text], input[type=password]
{
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    color:red;
}
.back
{
 top:65%;
 left:37%;
 position:absolute;
}
h7
{
 
 position: absolute;
 left: 660px;
 top: 80px;
 color:violet;
}
</style>
<form method="post" action="ChangePassword.jsp">
<body>

<%!
long Mno1;
long IMEI1;
%>

<%
String Mno=request.getParameter("Mob");
String IMEI=request.getParameter("IMEI");

if(request.getParameter("Mob")!=null)
Mno1=Long.valueOf(Mno);
if(request.getParameter("IMEI")!=null)
IMEI1=Long.valueOf(IMEI);


Customer c=new Customer();
c.setMno(Mno1);
c.setIMEI(IMEI1);



CusForgot cf=new CusForgot();
String msg=cf.getValidity(c);
System.out.println(msg);
if(msg.equals("Invalid User"))
{
%>

<script type="text/javascript">   
alert('You are not a valid User...');
alert('Please register yourself and enjoy the GATI...');
</script>

<script type="text/javascript">
      
            function Redirect() 
            {
               window.location="http://localhost:8028/Easy_Transfer/LoginWindow.html";
            }
            
            document.write("You will be redirected to main page in 3 sec.");
            setTimeout('Redirect()', 3000);
       
      </script>

<%
}
else if(msg.equals("Valid User"))
{
%>

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
<img src="img_avatar2.png" alt="Avatar" class="avatar">
</div>

<div class="container">

<table align="center" style="border:3px solid black;padding:20px;border-spacing:5px;">
<tr>
<th><label><b>Enter New Password:</b></label></th>
<td><input type="password" pattern=[0-9]{4} title="[0-9]" maxlength="4" name="pass" placeholder="Enter Digits Only" required></td>
</tr>
<tr>
<td colspan="7"><button type="Submit">Submit</button></td>
</tr>

</table>

</div>

<% session.setAttribute("Mno", Mno); %>
<% session.setAttribute("IMEI",IMEI); %>

<div class="back">
<a href="http://localhost:8028/Easy_Transfer/LoginWindow.html">Back</a>
</div>

<%
}
else
{
%>
<script type="text/javascript">   
alert('You are not a valid User...');
alert('Please register yourself and enjoy GATI facility...');
</script>

<script type="text/javascript">
      
            function Redirect() 
            {
               window.location="http://localhost:8028/Easy_Transfer/LoginWindow.html";
            }
            
            document.write("You will be redirected to main page in 3 sec.");
            setTimeout('Redirect()', 3000);
       
      </script>
<%
}
%>
</form>
</body>
</html>