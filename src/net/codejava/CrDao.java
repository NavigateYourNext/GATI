package net.codejava;
import java.sql.*;

public class CrDao
{
 
	public int getReqNo(CompRegistration cr)throws Exception
	{
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/BankInfo","root","root");
			PreparedStatement ps=conn.prepareStatement("Select ReqID+1 from CompReg");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				cr.setRegno(rs.getInt(1));
				
				
			}
			
			PreparedStatement ps1=conn.prepareStatement("INSERT INTO CompReg (ReqID,FromPerson,Query) VALUES (?,?,?);");
			ps1.setInt(1,cr.getRegno());
			ps1.setString(2,cr.getFrom());
			ps1.setString(3,cr.getQuery());
			
			ps1.executeUpdate();
			
			
			
			
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		
		return cr.getRegno();
	}
	
	
}
