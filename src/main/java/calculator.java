

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class calculator
 */
public class calculator extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public calculator() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String s1 = request.getParameter("t1");
		String s2 = request.getParameter("t2");
		String s3 = request.getParameter("bt1");
		
		int a = Integer.parseInt(s1);
		int b = Integer.parseInt(s2);
		
		int ans;
		if(s3.equals("1")) ans= a+b;
		else if(s3.equals("2")) ans= a-b;
		else if(s3.equals("3")) ans= a*b;
		else ans = a/b;
//		response.getWriter().append("Ans = "+ans);
		response.sendRedirect("NewFile.jsp?ans="+ans);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
