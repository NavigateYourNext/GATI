<%@page import="net.codejava.CompRegistration"%>
<%@page import="net.codejava.CrDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Complaint Registration</title>
</head>

<body>


<%
String from=request.getParameter("From");
String query=request.getParameter("Query");

CompRegistration cr=new CompRegistration();
cr.setFrom(from);
cr.setQuery(query);

CrDao cd=new CrDao();
int n=cd.getReqNo(cr);
if(n != 0) 
{
%>


<script type="text/javascript">   
alert('Your Request Submitted Successfully With Request No:- REQ<%=n%>');
alert('Get Back And Relax... Our Representative Will Contact You in 1 Working Day !');
</script>

<%
}
%>

<script type="text/javascript">
      
            function Redirect() 
            {
               window.location="http://localhost:8028/Easy_Transfer/LoginWindow.html";
            }
            
            document.write("You will be redirected to main page in 3 sec.");
            setTimeout('Redirect()', 3000);
       
      </script>


</body>
</html>