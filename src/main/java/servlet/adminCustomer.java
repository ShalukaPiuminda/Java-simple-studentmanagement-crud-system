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
import java.util.ArrayList;


public class adminCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public adminCustomer() {
        super();

    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   CusService service=new CusService();
	    ArrayList<Customer> customer=service.getAllcustomer();
		request.setAttribute("customer", customer);
		
		  
	    RequestDispatcher dispatcher=request.getRequestDispatcher("userTable.jsp");
	    dispatcher.forward(request,response);
		
	}

}
