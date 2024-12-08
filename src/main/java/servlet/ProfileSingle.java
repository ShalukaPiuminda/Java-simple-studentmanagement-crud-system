package servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Customer;
import service.CusService;

import java.io.IOException;


public class ProfileSingle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public ProfileSingle() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Customer cus=new Customer();
		cus.setEmail(request.getParameter("email"));
		CusService service=new CusService();
		Customer singleprof=service.getProfile(cus);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("userprofile.jsp");
		request.setAttribute("customer",singleprof);
		dispatcher.forward(request, response);
		
	}

}
