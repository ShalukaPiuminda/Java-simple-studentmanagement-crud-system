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

/**
 * Servlet implementation class AddCustomer
 */
public class AddCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddCustomer() {
        super();
       
    }

	
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Customer cus=new Customer();
		cus.setName(request.getParameter("name"));
		cus.setEmail(request.getParameter("email"));
		cus.setUsername(request.getParameter("username"));
		cus.setAge(Integer.parseInt(request.getParameter("age")));
		cus.setPassword(request.getParameter("password"));

	
		
		CusService service=new CusService();
		service.regCustomer(cus);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
	}

}
