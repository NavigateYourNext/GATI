package net.codejava;
import java.sql.*;

public class UpiDAO 
{

	public String verifyUPI(Customer c)throws Exception
	{
		String msg="";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BankInfo","root","root");
			Statement st=conn.createStatement();
			String pas="select ACCHOLNAME from cust where upi='"+c.getUpi()+"'";
			ResultSet rs=st.executeQuery(pas);
		         while(rs.next())
		         {
		            if(rs.getString(1).equals(msg))
		            {
		        	   msg="";
		            	break;
		            }
		            else
		            {
		            	msg=rs.getString(1);
		            	break;
		            }
		          }
		         
		    }
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		System.out.println(msg);
		
		return msg;
    }
	
	public boolean checkBalance(Customer c)throws Exception
	{
		boolean b=true;
		double amt=0.0;
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BankInfo","root","root");
			Statement st=conn.createStatement();
			String pas="select amount,pass from cust where upi='"+c.getUpi()+"'";
			ResultSet rs=st.executeQuery(pas);
		         while(rs.next())
		         {
		           if(rs.getDouble(1) < c.getAmount() || (!rs.getString(2).equals(String.valueOf(c.getTp()))))
		           {
		        	   b=false;
		        	   break;
		           }
		           else if(rs.getDouble(1) > c.getAmount() && rs.getString(2).equals(String.valueOf(c.getTp())))
		           {
		        	   amt=rs.getDouble(1)-c.getAmount();
		        	   String str="UPDATE CUST SET AMOUNT=? WHERE UPI='"+c.getUpi()+"'";
		               PreparedStatement psmt=conn.prepareStatement(str);
		              
		               psmt.setDouble(1,amt);
		               psmt.executeUpdate();
		               
		               b=true;
		           }
		         }
			
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		return b;
	}
	
	public String verifyAadhar(Customer c)throws Exception
	{
		String msg="";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BankInfo","root","root");
			Statement st=conn.createStatement();
			String pas="select ACCHOLNAME from cust where aadharno='"+c.getAadharNo()+"'";
			ResultSet rs=st.executeQuery(pas);
		         while(rs.next())
		         {
		            if(rs.getString(1).equals(msg))
		            {
		        	   msg="";
		            	break;
		            }
		            else
		            {
		            	msg=rs.getString(1);
		            	break;
		            }
		          }
		         
		    }
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		System.out.println(msg);
		
		return msg;
    }
	
	public boolean checkBalance1(Customer c)throws Exception
	{
		boolean b=true;
		double amt=0.0;
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BankInfo","root","root");
			Statement st=conn.createStatement();
			String pas="select amount,pass from cust where aadharno='"+c.getAadharNo()+"'";
			ResultSet rs=st.executeQuery(pas);
		         while(rs.next())
		         {
		           if(rs.getDouble(1) < c.getAmount() || (!rs.getString(2).equals(String.valueOf(c.getTp()))))
		           {
		        	   b=false;
		        	   break;
		           }
		           else if(rs.getDouble(1) > c.getAmount() && rs.getString(2).equals(String.valueOf(c.getTp())))
		           {
		        	   amt=rs.getDouble(1)-c.getAmount();
		        	   String str="UPDATE CUST SET AMOUNT=? WHERE aadharno='"+c.getAadharNo()+"'";
		               PreparedStatement psmt=conn.prepareStatement(str);
		              
		               psmt.setDouble(1,amt);
		               psmt.executeUpdate();
		               
		               b=true;
		           }
		         }
			
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		return b;
	}
	
	public String verifyVPA(Customer c)throws Exception
	{
		String msg="";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BankInfo","root","root");
			Statement st=conn.createStatement();
			String pas="select ACCHOLNAME from cust where vpa='"+c.getVPA()+"'";
			ResultSet rs=st.executeQuery(pas);
		         while(rs.next())
		         {
		            if(rs.getString(1).equals(msg))
		            {
		        	   msg="";
		            	break;
		            }
		            else
		            {
		            	msg=rs.getString(1);
		            	break;
		            }
		          }
		         
		    }
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		System.out.println(msg);
		
		return msg;
    }
	
	public boolean checkBalance2(Customer c)throws Exception
	{
		boolean b=true;
		double amt=0.0;
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BankInfo","root","root");
			Statement st=conn.createStatement();
			String pas="select amount,pass from cust where vpa='"+c.getVPA()+"'";
			ResultSet rs=st.executeQuery(pas);
		         while(rs.next())
		         {
		           if(rs.getDouble(1) < c.getAmount() || (!rs.getString(2).equals(String.valueOf(c.getTp()))))
		           {
		        	   b=false;
		        	   break;
		           }
		           else if(rs.getDouble(1) > c.getAmount() && rs.getString(2).equals(String.valueOf(c.getTp())))
		           {
		        	   amt=rs.getDouble(1)-c.getAmount();
		        	   String str="UPDATE CUST SET AMOUNT=? WHERE vpa='"+c.getVPA()+"'";
		               PreparedStatement psmt=conn.prepareStatement(str);
		              
		               psmt.setDouble(1,amt);
		               psmt.executeUpdate();
		               
		               b=true;
		           }
		         }
			
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		return b;
	}
	
	public String verifyAccount(Customer c)throws Exception
	{
		String msg="";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BankInfo","root","root");
			Statement st=conn.createStatement();
			String pas="select ACCHOLNAME from cust where accno='"+c.getAccNo()+"'and ifsc='"+c.getIFSC()+"'";
			ResultSet rs=st.executeQuery(pas);
		         while(rs.next())
		         {
		            if(rs.getString(1).equals(msg))
		            {
		        	   msg="";
		            	break;
		            }
		            else
		            {
		            	msg=rs.getString(1);
		            	break;
		            }
		          }
		         
		    }
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		System.out.println(msg);
		
		return msg;
    }
	
	public boolean checkBalance3(Customer c)throws Exception
	{
		boolean b=true;
		double amt=0.0;
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BankInfo","root","root");
			Statement st=conn.createStatement();
			String pas="select amount,pass from cust where accno='"+c.getAccNo()+"' and ifsc='"+c.getIFSC()+"'";
			ResultSet rs=st.executeQuery(pas);
		         while(rs.next())
		         {
		           if(rs.getDouble(1) < c.getAmount() || (!rs.getString(2).equals(String.valueOf(c.getTp()))))
		           {
		        	   b=false;
		        	   break;
		           }
		           else if(rs.getDouble(1) > c.getAmount() && rs.getString(2).equals(String.valueOf(c.getTp())))
		           {
		        	   amt=rs.getDouble(1);
		        	   String str="UPDATE CUST SET AMOUNT=? WHERE accno='"+c.getAccNo()+"'";
		               PreparedStatement psmt=conn.prepareStatement(str);
		              
		               psmt.setDouble(1,amt);
		               psmt.executeUpdate();
		               
		               b=true;
		           }
		         }
			
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		return b;
	}
	
}
