<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="components/header.jsp" %>

<!-- Hero Section with Background Image -->
<style>
    .hero-section {
        position: relative;
        background: url('assets/home.jpg') no-repeat center center/cover;
        color: white;
        text-align: center;
        padding: 100px 20px;
    }

    .hero-overlay {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.4); /* Add an overlay effect */
        z-index: 1;
    }

    .hero-section h1,
    .hero-section p {
        position: relative;
        z-index: 2;
        font-family: 'Arial', sans-serif;
        text-shadow: 0 0 10px rgba(255, 255, 255, 0.8),
                     0 0 20px rgba(255, 255, 255, 0.6),
                     0 0 30px rgba(255, 255, 255, 0.4);
        animation: blinkText 2s infinite;
    }

    @keyframes blinkText {
        0%, 100% {
            opacity: 1;
            text-shadow: 0 0 10px rgba(255, 255, 255, 0.8),
                         0 0 20px rgba(255, 255, 255, 0.6),
                         0 0 30px rgba(255, 255, 255, 0.4);
        }
        50% {
            opacity: 0.6;
            text-shadow: 0 0 5px rgba(255, 255, 255, 0.5),
                         0 0 10px rgba(255, 255, 255, 0.3),
                         0 0 20px rgba(255, 255, 255, 0.2);
        }
    }
</style>

<section class="hero-section">
    <div class="hero-overlay"></div>
    <h1>Welcome to My Student Management System</h1>
    <p>A simple web app built with Java, MySQL, and Bootstrap.</p>
</section>

<!-- Features Section -->
<main class="flex-grow-1">
    <section class="container py-5">
        <div class="row text-center">
            <div class="col-md-4 mb-4">
                <div class="card feature-card p-4">
                    <i class="bi bi-speedometer2 display-4 text-primary"></i>
                    <h5 class="mt-3">Simple beginner friendly</h5>
                    <p>Learn while making java web features simple</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card feature-card p-4">
                    <i class="bi bi-lock-fill display-4 text-success"></i>
                    <h5 class="mt-3">MVC structured</h5>
                    <p>MVC structured and header footer component separated simple web app</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card feature-card p-4">
                    <i class="bi bi-heart-fill display-4 text-danger"></i>
                    <h5 class="mt-3">Include CRUD features</h5>
                    <p>Add Student, Read Student using table, delete and edit student using email</p>
                </div>
            </div>
        </div>
    </section>
</main>

<%@ include file="components/footer.jsp" %>
