package net.codejava;
import java.sql.*;

public class SignUpDao
{

	String msg="";
	
	public String checkInfo(Customer c)throws Exception
	{
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BankInfo","root","root");
			Statement st=conn.createStatement();
			String pas="select MNO,BANKNAME,dbno,cvv,flat from cust where MNO='"+c.getMno()+"'";
			ResultSet rs=st.executeQuery(pas);
		         while(rs.next())
		         {
		            if(rs.getString(1).equals(String.valueOf(c.getMno())) && rs.getString(2).equals(String.valueOf(c.getBankName())) && rs.getString(3).equals(String.valueOf(c.getDbcardno())) && rs.getString(4).equals(String.valueOf(c.getCvv())) && rs.getString(5).equals(String.valueOf(c.getFlag())))
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
	
	public Customer getDetails(Customer c)throws Exception
	{
		Customer c1=c;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BankInfo","root","root");
			Statement st=conn.createStatement();
			String pas="select ACCHOLNAME,BANKNAME,ACCNO,BRANCH,IFSC from cust where MNO='"+c.getMno()+"'";
			ResultSet rs=st.executeQuery(pas);
		         while(rs.next())
		         {
			       c1.setAccHolName(rs.getString(1));
			       c1.setBankName(rs.getString(2));
			       c1.setAccNo(Long.valueOf(rs.getString(3)));
			       c1.setBranch(rs.getString(4));
			       c1.setIFSC(rs.getString(5));
			     }
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		
		return c1;
	}
	
	public int updateData(Customer c)throws Exception
	{  
		int a=0;
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BankInfo","root","root");
			
            String str="UPDATE CUST SET PASS=?,IMEI=?,flat=? WHERE MNO='"+String.valueOf(c.getMno())+"'";
            PreparedStatement psmt=conn.prepareStatement(str);
           
            psmt.setInt(1,c.getTp());
            psmt.setString(2,String.valueOf(c.getIMEI()));
            psmt.setInt(3,c.getFlag());
            
            psmt.executeUpdate();
            
            a=1;
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
	
	return a;
	}
}
