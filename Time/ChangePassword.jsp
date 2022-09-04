<%@page import="net.codejava.Customer" %>
<%@page import="net.codejava.CusForgot" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
</head>
<body>
<%
String pass=request.getParameter("pass");
int pas=Integer.valueOf(pass);
String Mno1=session.getAttribute("Mno").toString();
String IMEI1=session.getAttribute("IMEI").toString();
Long Mno2=Long.valueOf(Mno1);
Long IMEI2=Long.valueOf(IMEI1);

Customer c=new Customer();
CusForgot cf=new CusForgot();

c.setTp(pas);
c.setMno(Mno2);
c.setIMEI(IMEI2);


int a=cf.updateTp(c);
if(a == 1)
{
%>
<script type="text/javascript">   
alert('Password changed successfully, Kindly Login...');
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
</html>