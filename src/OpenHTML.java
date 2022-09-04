public class OpenHTML
{

	public static void main(String[] args)
	{
		
		        try 
		        {
		            Runtime rtime = Runtime.getRuntime();

		            String url = "E:/Akshay Docs/Sample/Easy Transfer/WebContent/LoginWindow.html";
		            String brow = "C:/Program Files/Internet Explorer/iexplore.exe";

		            Process pc = rtime.exec(brow +" "+ url); 
		            
		            pc.waitFor();
		            
		         } 
		        
		        catch (Exception e)
		        {
		              System.out.println("\n\n" + e.getMessage());
		        }
	}
}


