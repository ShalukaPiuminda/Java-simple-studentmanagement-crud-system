package service;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import controller.DBconnect;
import model.Customer;

public class CusService {
	 
// add customer	
  public void regCustomer(Customer cus) {
	  try {
		  String query = "INSERT INTO customer (email, name, username, age, password) VALUES ('" + cus.getEmail() + "', '" + cus.getName() + "', '" + cus.getUsername() + "', " + cus.getAge() + ", '" + cus.getPassword() + "')";
		  Statement stmt=DBconnect.getConnection().createStatement();
		  stmt.executeUpdate(query);
	  } catch (Exception e) {
	    e.printStackTrace();
	}
  }
  
  public boolean loginvalidate(Customer cus) {
	  try {
		  String query = "SELECT * FROM customer WHERE email='" + cus.getEmail() + "' AND password='" + cus.getPassword() + "'";
		  Statement stmt=DBconnect.getConnection().createStatement();
		  ResultSet rs=stmt.executeQuery(query);
		  
		  if(rs.next()) {
			  return true;
		  }
	} catch (Exception e) {
		e.printStackTrace();
	}
	  
	  return false;
  }
  
  public Customer getOne(Customer cus) {
	  try {
		  String query = "SELECT * FROM customer WHERE email='" + cus.getEmail() + "' AND password='" + cus.getPassword() + "'";
		  Statement stmt=DBconnect.getConnection().createStatement();
		  ResultSet rs=stmt.executeQuery(query);
		  
		  if(rs.next()) {
			  cus.setEmail(rs.getString("email"));
			  cus.setName(rs.getString("name"));
			  cus.setUsername(rs.getString("username"));
			  cus.setAge(rs.getInt("age"));
			  cus.setPassword(rs.getString("password"));
			 
			  return cus;
		  }
	} catch (Exception e) {
		e.printStackTrace();
	}
	  
	  return null;
  }
  public ArrayList<Customer> getAllcustomer(){
	  try {
		ArrayList<Customer> listcus=new ArrayList<Customer>();
		String query="SELECT * FROM customer";
		Statement stmt=DBconnect.getConnection().createStatement();
		ResultSet rs=stmt.executeQuery(query);
		while(rs.next()) {
			Customer cus=new Customer();
			cus.setEmail(rs.getString("email"));
			cus.setName(rs.getString("name"));
			cus.setUsername(rs.getString("username"));
			cus.setPassword(rs.getString("password"));
			cus.setAge(rs.getInt("age"));
			listcus.add(cus);
		}
		return listcus;
		
	} catch (Exception e) {
		e.printStackTrace();
		return null;
	}
  }
  
  public Customer getProfile(Customer cus) {
	  try {
		  String query = "SELECT * FROM customer WHERE email='" + cus.getEmail()+"'";
		  Statement stmt=DBconnect.getConnection().createStatement();
		  ResultSet rs=stmt.executeQuery(query);
		  
		  if(rs.next()) {
			  cus.setEmail(rs.getString("email"));
			  cus.setName(rs.getString("name"));
			  cus.setUsername(rs.getString("username"));
			  cus.setAge(rs.getInt("age"));
			  cus.setPassword(rs.getString("password"));
			 
			  return cus;
		  }
	} catch (Exception e) {
		e.printStackTrace();
	}
	  
	  return null;
  }
  
  public void updateCustomer(Customer cus) {
	    try {
	        String query = "UPDATE customer SET email = '" + cus.getEmail() + 
	                       "', name = '" + cus.getName() + 
	                       "', username = '" + cus.getUsername() + 
	                       "', age = '" + cus.getAge() + 
	                       "', password = '" + cus.getPassword() + 
	                       "' WHERE email = '" + cus.getEmail() + "'";
	                       
	        Statement stmt = DBconnect.getConnection().createStatement();
	        stmt.executeUpdate(query);

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
  public void deleteCustomer(Customer cus) {
	  try {
		 String query="DELETE FROM customer where email='"+cus.getEmail()+"'";
		 Statement stmt=DBconnect.getConnection().createStatement();
		 stmt.execute(query);
	} catch (Exception e) {
		e.printStackTrace();
	}
  }

  
  
  
}
