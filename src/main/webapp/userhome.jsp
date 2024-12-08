<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="components/logheader.jsp" %>

<!-- Hero Section -->
<section class="hero-section">
    <h1>Welcome to My Java Web Application</h1>
    <p>A simple and modern web app built with Java and Bootstrap.</p>
    <a href="#" class="btn btn-light btn-lg">Get Started</a>
</section>

<!-- Features Section -->
<main class="flex-grow-1">
   <section class="co	ntainer py-5">
    <div class="row text-center">
        <div class="col-md-4 mb-4">
            <div class="card feature-card p-4">
                <i class="bi bi-speedometer2 display-4 text-primary"></i>
                <h5 class="mt-3">Fast Performance</h5>
                <p>Experience blazing-fast speeds with our optimized platform.</p>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card feature-card p-4">
                <i class="bi bi-lock-fill display-4 text-success"></i>
                <h5 class="mt-3">Secure</h5>
                <p>Your data is safe with our industry-leading security measures.</p>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card feature-card p-4">
                <i class="bi bi-heart-fill display-4 text-danger"></i>
                <h5 class="mt-3">User-Friendly</h5>
                <p>Navigate with ease using our intuitive design.</p>
            </div>
        </div>
    </div>
</section>
 

</main>
	
<%@ include file="components/footer.jsp" %>
