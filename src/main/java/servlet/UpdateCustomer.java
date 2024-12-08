package servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Customer;
import service.CusService;

import java.io.IOException;

public class UpdateCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public UpdateCustomer() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Customer cus=new Customer();
		cus.setName(request.getParameter("name"));
		cus.setUsername(request.getParameter("username"));
		cus.setAge(Integer.parseInt(request.getParameter("age")));
		cus.setEmail(request.getParameter("email"));
		cus.setPassword(request.getParameter("password"));
		
		CusService service= new CusService();
		service.updateCustomer(cus);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("profile");
		dispatcher.forward(request, response);
		
	}

}
