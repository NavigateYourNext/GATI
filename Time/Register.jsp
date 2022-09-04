<%@page import="net.codejava.Customer"%>
<%@page import="net.codejava.SignUpDao" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>
<%
String t=request.getParameter("sp");
String im=request.getParameter("IMEI");
String Mno1=session.getAttribute("Mno").toString();

int tp=Integer.valueOf(t);
Long imei=Long.valueOf(im);
Long Mobi=Long.valueOf(Mno1);
int flag=1;

Customer c=new Customer();
c.setIMEI(imei);
c.setTp(tp);
c.setMno(Mobi);
c.setFlag(flag);

SignUpDao spd=new SignUpDao();
int i=spd.updateData(c);

if(i == 1)
{
%>
<script type="text/javascript">   
alert('Congrats... Your Registration Is Successfully Completed !');
alert('Kindly Login...');
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