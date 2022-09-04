package net.codejava;
import java.sql.*;
import net.codejava.Success;

public class SuccessDAO
{
   public int getTransferId(Success cr)throws Exception
   {
	   try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BankInfo","root","root");
			PreparedStatement ps=conn.prepareStatement("Select TransferID+1 from TransferDetails");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				cr.setTid(rs.getInt(1));
				
				
			}
			
			PreparedStatement ps1=conn.prepareStatement("INSERT INTO TransferDetails (TransferID,Benificiary,Amount) VALUES (?,?,?);");
			ps1.setInt(1,cr.getTid());
			ps1.setString(2,cr.getBenificiary());
			ps1.setDouble(3,cr.getAmount());
			
			ps1.executeUpdate();
			
			
			
			
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		
		return cr.getTid();
	
	 
   }
   
   public void updateLastTransfer(Success cr)throws Exception
   {
	   try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BankInfo","root","root");
			PreparedStatement ps1=conn.prepareStatement("INSERT INTO LastTransfer (TransferID,Benificiary,Amount) VALUES (?,?,?);");
			ps1.setInt(1,cr.getTid());
			ps1.setString(2,cr.getBenificiary());
			ps1.setDouble(3,cr.getAmount());
			
			ps1.executeUpdate();
			
			
			
			
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
	   
   }
   
   public Success viewDetails(Customer c)throws Exception
   {
	   Success s=new Success();
	   String aadhar=null;
	   String accno=null;
	   String upi=null;
	   String vpa=null;
	   try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BankInfo","root","root");
			PreparedStatement ps1=conn.prepareStatement("Select accno,upi,vpa,aadharno from cust where mno='"+c.getMno()+"'");
			ResultSet rs1=ps1.executeQuery();
			while(rs1.next())
			{
				accno=(rs1.getString(1));
				upi=(rs1.getString(2));
				vpa=rs1.getString(3);
				aadhar=(rs1.getString(4));
			}
			
			PreparedStatement ps=conn.prepareStatement("Select * from LastTransfer where Benificiary in ('"+aadhar+"','"+upi+"','"+vpa+"','"+accno+"')");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				s.setTid(Integer.valueOf(rs.getString(1)));
				s.setBenificiary(rs.getString(2));
				s.setAmount(rs.getDouble(3));
				if(s.getBenificiary().equals(accno))
				{
					s.setStatus("In Progress");
				}
				else
				{
					s.setStatus("Complete");
				}
				
				
			}
		}
	   catch(Exception e)
	   {
		   System.out.println(e.getMessage());
	   }
	   
	   return s;
   }
}
