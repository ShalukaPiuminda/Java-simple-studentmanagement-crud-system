<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
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
    border-color: #6c63ff;
  }
  .btn-dark {
    background-color: #6c63ff;
    border-color: #6c63ff;
  }
  .btn-dark:hover {
    background-color: #5848d1;
    border-color: #5848d1;
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
              <img src="assets/signin.jpg" 
                alt="Login Form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;">
            </div>
            <!-- Form Section -->
            <div class="col-md-6 d-flex align-items-center">
              <div class="card-body p-4">
                <form method="post" action="login">
                  <h2 class="fw-bold mb-4 text-center">Login</h2>
                  <div class="mb-3">
                    <label for="email" class="form-label">Email Address</label>
                    <input type="email" class="form-control" id="email" placeholder="Enter your email" name="email">
                  </div>
                  <div class="mb-4">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" placeholder="Enter your password" name="password">
                  </div>
                  <div class="mb-3 text-center">
                    <button type="submit" class="btn btn-dark w-100">Login</button>
                  </div>
                  <div class="text-center">
                    <a href="#" class="small text-muted">Forgot password?</a>
                  </div>
                  <div class="text-center mt-3">
                    <span class="text-muted">Don't have an account?</span> 
                    <a href="register.jsp" class="text-primary">Register</a>
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
