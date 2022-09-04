package net.codejava;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String button=request.getParameter("button");
		
		if("ContactUs".equals(button))
		{
			request.getRequestDispatcher("ContactUs.jsp").forward(request, response);
		}
		else if("ForgotPassword".equals(button))
		{
			request.getRequestDispatcher("ForgotPassword.html").forward(request, response);
		}
		else if("SignUp".equals(button))
		{
			request.getRequestDispatcher("SignUp.html").forward(request, response);
		}
		else if("Transfer".equals(button))
		{
			request.getRequestDispatcher("Transfer.html").forward(request, response);
		}
		else if("LastTransactions".equals(button))
		{
			request.getRequestDispatcher("LastTransactions.jsp").forward(request, response);
		}	
		else if("UPI".equals(button))
		{
			request.getRequestDispatcher("UPI.html").forward(request, response);
		}
		else if("VPA".equals(button))
		{
			request.getRequestDispatcher("VPA.html").forward(request, response);
		}
		else if("Aadhar".equals(button))
		{
			request.getRequestDispatcher("Aadhar.html").forward(request, response);
		}
		else if("Account".equals(button))
		{
			request.getRequestDispatcher("Account.html").forward(request, response);
		}

		}
	}


