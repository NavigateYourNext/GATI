package net.codejava;
import java.sql.*;
import net.codejava.Customer;

public class CusForgot
{
	public String getValidity(Customer c)throws Exception
	{
		String msg="";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BankInfo","root","root");
			Statement st=conn.createStatement();
			String pas="select MNO,IMEI from cust where MNO='"+c.getMno()+"'";
			ResultSet rs=st.executeQuery(pas);
		         while(rs.next())
		         {
		            if(rs.getString(1).equals(String.valueOf(c.getMno())) && rs.getString(2).equals(String.valueOf(c.getIMEI())))
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
	
	public int updateTp(Customer c)throws Exception
	{
		try
		{
			String a=Long.toString(c.getMno());
			String b=Long.toString(c.getIMEI());
			int tp=c.getTp();
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BankInfo","root","root");
			
            String str="UPDATE CUST SET PASS=? WHERE MNO='"+a+"'";
            PreparedStatement psmt=conn.prepareStatement(str);
           
            psmt.setInt(1, tp);
            psmt.executeUpdate();
                
	    }
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		
	    return 1;
    }
}
