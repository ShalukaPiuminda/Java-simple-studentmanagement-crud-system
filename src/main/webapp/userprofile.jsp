<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="components/logheader.jsp" %> <!-- Include the header -->

<style>
    /* CSS Reset */
    body, html, div, p, header, footer, nav, section, article {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        background-color: #f2f6fc;
        color: #69707a;
        font-family: Arial, sans-serif;
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }

    main {
        flex-grow: 1; /* Ensure footer stays at the bottom */
    }

    .img-account-profile {
        height: 10rem;
    }

    .rounded-circle {
        border-radius: 50% !important;
    }

    .card {
        box-shadow: 0 0.15rem 1.75rem 0 rgb(33 40 50 / 15%);
        margin-bottom: 1rem;
    }

    .card-header:first-child {
        border-radius: 0.35rem 0.35rem 0 0;
    }

    .form-control, .dataTable-input {
        display: block;
        width: 100%;
        padding: 0.875rem 1.125rem;
        font-size: 0.875rem;
        font-weight: 400;
        line-height: 1;
        color: #69707a;
        background-color: #fff;
        border: 1px solid #c5ccd6;
        border-radius: 0.35rem;
    }

 
</style>

<main>
    <div class="container-xl px-4 mt-4">
        <!-- Account page navigation-->
        <nav class="nav nav-borders">
            <a class="nav-link active ms-0" href="userprofile.jsp">Profile</a>
            <form class="nav-link ms-0" action="admintable" method="post">
                <button class="btn btn-sm btn-outline-primary" type="submit">Get All Customers</button>
            </form>
        </nav>
        <hr class="mt-0 mb-4">
        <div class="row">
            <div class="col-xl-4">
                <!-- Profile picture card -->
                <div class="card mb-4 mb-xl-0" style="max-width: 250px; border-radius: 15px; margin: 0 auto; overflow: hidden;">
                    <div class="card-body text-center">
                        <!-- Profile picture image -->
                        <img class="img-fluid rounded-circle mb-2" src="assets/users.png" alt="" style="width: 150px; height: 150px; object-fit: cover;">
                    </div>
                </div>
            </div>
            <div class="col-xl-8">
                <!-- Account details card -->
                <div class="card mb-4">
                    <div class="card-header">Account Details</div>
                    <div class="card-body">
                        <c:set var="cus" value="${customer}" />
                        <div class="mb-3">
                            <label class="small mb-1" for="inputUsername">Name</label>
                            <input class="form-control" id="inputUsername" type="text" value="${cus.name}" readonly="readonly">
                        </div>
                        <div class="row gx-3 mb-3">
                            <div class="col-md-4">
                                <label class="small mb-1" for="inputOrgName">Username</label>
                                <input class="form-control" id="name" type="text" value="${cus.username}" readonly="readonly">
                            </div>
                            <div class="col-md-4">
                                <label class="small mb-1" for="inputLocation">Age</label>
                                <input class="form-control" id="age" type="text" value="${cus.age}" readonly="readonly">
                            </div>
                            <div class="col-md-4">
                                <label class="small mb-1" for="inputLocation">Password</label>
                                <input class="form-control" id="password" type="password" value="${cus.password}" readonly="readonly">
                            </div>
                        </div>
                        <div class="mb-3">
                            <label class="small mb-1" for="inputEmailAddress">Email Address</label>
                            <input class="form-control" id="email" type="email" value="${cus.email}" readonly="readonly">
                        </div>
                        <form action="updatecus.jsp" method="get">
                            <input type="hidden" name="name" value="${cus.name}">
                            <input type="hidden" name="username" value="${cus.username}">
                            <input type="hidden" name="age" value="${cus.age}">
                            <input type="hidden" name="password" value="${cus.password}">
                            <input type="hidden" name="email" value="${cus.email}">
                            <input type="submit" value="Edit Profile" class="btn btn-primary">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<%@ include file="components/footer.jsp" %>