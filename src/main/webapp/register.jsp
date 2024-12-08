<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign-Up Page</title>
<link href="boostrap/css/bootstrap.min.css" rel="stylesheet">
<style>
  body {
    background-color: #f8f9fa;
  }
  .card {
    border-radius: 1rem;
    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
  }
  .form-control:focus {
    box-shadow: none;
    border-color: #17a2b8;
  }
  .btn-primary {
    background-color: #17a2b8;
    border-color: #17a2b8;
  }
  .btn-primary:hover {
    background-color: #138496;
    border-color: #117a8b;
  }
</style>
</head>
<body>
  <div class="container d-flex align-items-center justify-content-center vh-100">
    <div class="row justify-content-center w-100">
      <div class="col-md-8 col-lg-6">
        <div class="card">
          <div class="row g-0">
            <!-- Image Section -->
            <div class="col-md-6 d-none d-md-block">
              <img src="assets/signup.jpg" 
                alt="Sign-Up" class="img-fluid" style="border-radius: 1rem 0 0 1rem;">
            </div>
            <!-- Form Section -->
            <div class="col-md-6 d-flex align-items-center">
              <div class="card-body p-4">
                <form method="post" action="addcus">
                  <h2 class="fw-bold mb-4 text-center">Sign Up</h2>
                  <!-- Full Name -->
                  <div class="mb-3">
                    <label for="name" class="form-label">Full Name</label>
                    <input type="text" class="form-control" id="name" placeholder="Enter your full name" name="name">
                  </div>
                  <!-- Email -->
                  <div class="mb-3">
                    <label for="email" class="form-label">Email Address</label>
                    <input type="email" class="form-control" id="email" placeholder="Enter your email" name="email">
                  </div>
                  <!-- Username -->
                  <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" class="form-control" id="username" placeholder="Choose a username" name="username">
                  </div>
                      <!-- age -->
                  <div class="mb-3">
                    <label for="age" class="form-label">Age</label>
                    <input type="text" class="form-control" id="age" placeholder="Enter your age" name="age">
                  </div>
               
                  
                  <!-- Password -->
                  <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" placeholder="Create a password" name="password">
                  </div>
               
                  <!-- Submit Button -->
                  <div class="mb-3 text-center">
                    <button type="submit" class="btn btn-primary w-100">Register</button>
                  </div>
                  <!-- Link to Login -->
                  <div class="text-center">
                    <span class="text-muted">Already have an account?</span>
                    <a href="login.jsp" class="text-primary">Login</a>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
<script src="../bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
