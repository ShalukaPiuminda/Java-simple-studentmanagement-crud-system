<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Java Web App</title>
    <!-- Offline Bootstrap CSS -->
    <link href="boostrap/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body{
           display: flex;
   		   flex-direction: column;
   		   min-height: 100vh; /* Ensures the body takes the full viewport height */
   		   margin: 0;
   		
    		padding: 0;
   	 		box-sizing: border-box;
        } 
    
        .hero-section {
            background: linear-gradient(to bottom right, #007bff, #6c757d);
            color: white;
            text-align: center;
            padding: 50px 20px;
        }
        .hero-section h1 {
            font-size: 3rem;
            margin-bottom: 20px;
        }
        .hero-section p {
            font-size: 1.2rem;
        }
        .feature-card {
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        
         main {
          flex-grow: 1; /* Pushes the footer to the bottom */
          }
        
    </style>
</head>
<body  class="d-flex flex-column min-vh-100">
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">
        <div class="container">
            <a class="navbar-brand" href="#">My Java Web App</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="aboutus.jsp" >About</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
				 </ul>
		      <form class="nav-item mx-3 "  action="admintable" method="post"><button class="btn btn-sm btn-outline-primary" type="submit">Get All customers</button></form>					
              <a class="nav-item btn btn-outline-danger ml-4" href="index.jsp">Logout</a>
      
            </div>
        </div>
    </nav>
