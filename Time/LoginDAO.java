package net.codejava;
import java.sql.*;

public class LoginDAO 
{
	public String checkCust(Customer c)throws Exception
	{
		String msg="";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BankInfo","root","root");
			Statement st=conn.createStatement();
			String pas="select MNO,PASS from cust where MNO='"+c.getMno()+"'";
			ResultSet rs=st.executeQuery(pas);
		         while(rs.next())
		         {
		            if(rs.getString(1).equals(String.valueOf(c.getMno())) && rs.getString(2).equals(String.valueOf(c.getTp())))
		            {
		            	msg="Valid User";
		            	break;
		            }
		            else
		            {
		            	msg="Invalid User";
		            	break;
		            }
		          }
		         
		    }
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		
		return msg;
    }
	
	public double getBalance(Customer c)throws Exception
	{
		double d=0.0;
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BankInfo","root","root");
		Statement st=conn.createStatement();
		String pas="select AMOUNT from cust where MNO='"+c.getMno()+"'";
		ResultSet rs=st.executeQuery(pas);
		while(rs.next())
		{
	       	d=rs.getDouble(1);	
		}
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		return d;
	}
}
