<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="components/logheader.jsp" %> <!-- Include the header component -->

<style>
    html, body {
        margin: 0;
        padding: 0;
        height: 100%;
        background-color: #f2f6fc;
        color: #69707a;
    }

    body {
        display: flex;
        flex-direction: column;
    }

    .container-xl {
        flex: 1; /* Allows the content to stretch and fill the space between header and footer */
    }

    .img-account-profile {
        height: 10rem;
    }

    .rounded-circle {
        border-radius: 50% !important;
    }

    .card {
        box-shadow: 0 0.15rem 1.75rem 0 rgb(33 40 50 / 15%);
    }

    .card .card-header {
        font-weight: 500;
    }

    .card-header:first-child {
        border-radius: 0.35rem 0.35rem 0 0;
    }

    .card-header {
        padding: 1rem 1.35rem;
        margin-bottom: 0;
        background-color: rgba(33, 40, 50, 0.03);
        border-bottom: 1px solid rgba(33, 40, 50, 0.125);
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
        background-clip: padding-box;
        border: 1px solid #c5ccd6;
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        border-radius: 0.35rem;
        transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
    }

    .nav-borders .nav-link.active {
        color: #0061f2;
        border-bottom-color: #0061f2;
    }

    .nav-borders .nav-link {
        color: #69707a;
        border-bottom-width: 0.125rem;
        border-bottom-style: solid;
        border-bottom-color: transparent;
        padding-top: 0.5rem;
        padding-bottom: 0.5rem;
        padding-left: 0;
        padding-right: 0;
        margin-left: 1rem;
        margin-right: 1rem;
    }

</style>
</head>
<body>
    <div class="container-xl px-4 mt-4">
        <!-- Account page navigation-->
        <nav class="nav nav-borders">
            <a class="nav-link active ms-0" href="userprofile.jsp" target="__blank">Profile</a>
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
                <!-- Account details card-->
                <div class="card mb-4">
                    <div class="card-header">Account Details</div>
                    <div class="card-body">
                        <!-- Form Group (username) -->
                        <form action="updatecus" method="post">
                            <div class="mb-3">
                                <label class="small mb-1" for="name">Name</label>
                                <input class="form-control" id="name" type="text" name="name" value="${param.name}">
                            </div>
                            <div class="row gx-3 mb-3">
                                <!-- Form Group (username) -->
                                <div class="col-md-4">
                                    <label class="small mb-1" for="username">Username</label>
                                    <input class="form-control" id="username" type="text" name="username" value="${param.username}">
                                </div>
                                <!-- Form Group (age) -->
                                <div class="col-md-4">
                                    <label class="small mb-1" for="age">Age</label>
                                    <input class="form-control" id="age" type="text" name="age" value="${param.age}">
                                </div>
                                <!-- Form Group (password) -->
                                <div class="col-md-4">
                                    <label class="small mb-1" for="password">Password</label>
                                    <input class="form-control" id="password" type="text" name="password" value="${param.password}">
                                </div>
                            </div>
                            <!-- Form Group (email) -->
                            <div class="mb-3">
                                <label class="small mb-1" for="email">Email address</label>
                                <input class="form-control" id="email" type="email" name="email" value="${param.email}">
                            </div>
                            <!-- Save changes button -->
                            <button type="submit" class="btn btn-success">Save Changes</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

<%@ include file="components/footer.jsp" %>
