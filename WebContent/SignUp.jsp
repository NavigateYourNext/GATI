<%@page import="net.codejava.Customer"%>
<%@page import="net.codejava.SignUpDao" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
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
.register 
{
    text-align: center;
    margin: 10px 0 10px 0;
}
h4
{
 color:green;
 text-align:right;
}
.avatar 
{
    width: 15%;
    border-radius: 50%;
}
.avatar1
{
   width: 12%;
   text-align:center;
}

h2
{
 text-align:center;
 padding:20px;
 color:#dc143c;
}
.time
{
 padding:20px;
 color:red;
 position:absolute;
 top:7%;
 left:72%;
}
h6
{
 position:absolute;
 top:500px;
 left:890px;
 color:red;
}
.complaints
{
 padding:20px;
}
input[type=text], input[type=password]
{
    width: 100%;
    padding: 5px 5px;
    margin: 3px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    color:blue;
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
<%
Long mob=Long.valueOf(request.getParameter("Mob"));
String bname=request.getParameter("Bname");
long db=Long.valueOf(request.getParameter("db"));
int cvv=Integer.valueOf(request.getParameter("cvv"));

Customer c=new Customer();
c.setMno(mob);
c.setBankName(bname);
c.setCvv(cvv);
c.setDbcardno(db);


SignUpDao sd=new SignUpDao();
String msg=sd.checkInfo(c);
if(msg.equals("Invalid User"))
{
%>

<script type="text/javascript">   
alert('You are not an account holder of <%=c.getBankName()%> or You are already Signed Up in GATI');
alert('Enter Proper Details');
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
	Customer cs=sd.getDetails(c);
%>
<form action="Register.jsp" method="post">
<body style="background-color:#fff8dc;">

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
<img src="yourself.png" alt="Avatar" class="avatar">
</div>
<div class="complaints">
<table align="center" style="border:3px solid black;padding:20px;border-spacing:5px;">
<tr>
<th style="color:red;"><lable><b>Your Details Are:</b></lable></th>
</tr>
<tr>
<th><label><b>Account Number</b></label></th>
<td><input type="text" name="AN" value="<%=cs.getAccNo() %>" size="30" disabled></td>
</tr>
<tr>
<th><label><b>Bank Name</b></label></th>
<td><input type="text" name="BN" value="<%=cs.getBankName() %>" size="30" disabled></td>
</tr>
<tr>
<th><label><b>Branch Name</b></label></th>
<td><input type="text" name="BrN" value="<%=cs.getBranch() %>" size="30" disabled></td>
</tr>
<tr>
<th><label><b>IFSC Code</b></label></th>
<td><input type="text" name="IFSC" value="<%=cs.getIFSC() %>" size="30" disabled></td>
</tr>
<tr>
<th><label><b>Account Holder Name</b></label></th>
<td><input type="text" name="AHN" value="<%=cs.getAccHolName() %>" size="30" disabled></td>
</tr>
<tr>
<th><label><b>Enter Password</b></label></th>
<td><input type="password" name="sp" pattern=[0-9]{4} title="[0-9]" maxlength="4" placeholder="4 Digits Only" required></td>
</tr>
<tr>
<th><label><b>Enter IMEI</b></label></th>
<td><input type="password" name="IMEI" pattern=[0-9]{6} title="[0-9]" maxlength="6" placeholder="Last 6 digits only" required></td>
</tr>
<tr>
<td colspan="9"><button type="Submit">Register</button></td>
</table>
</div>
<h6>(Press "*#06#" on your mobile and enter last 6 digits of IMEI number. It is helpful if you forgot your password.)</h6>
<% session.setAttribute("Mno", mob); %>
<%
}
else
{
%>
<script type="text/javascript">   
alert('You are Invalid User...');
alert('Please Enter Proper Details And Enjoy GATI Facility...');
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

</body>
</form>
</html>