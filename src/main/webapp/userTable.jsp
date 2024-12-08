<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="components/logheader.jsp" %>
<style>
  /* Ensure the body and html take the full height */
  html, body {
    height: 100%;
    margin: 0;
    display: flex;
    flex-direction: column;
    background-color: #f8f9fa;
  }
  /* Flex container to ensure footer is at the bottom */
  .flex-container {
    flex: 1; /* Takes up remaining space to push footer to the bottom */
    display: flex;
    flex-direction: column;
    justify-content: space-between;
  }
  .content {
    flex: 1; /* Takes up the available space before footer */
    margin: 5% auto;
    width: 90%;
  }
  .table {
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    overflow: hidden;
  }
  .badge {
    padding: 0.4em 0.7em;
    font-size: 0.85rem;
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
    padding: 0.5rem 1rem;
  }
  footer {
    text-align: center;
    padding: 1rem;
    background-color: #343a40;
    color: #ffffff;
  }
</style>

<div class="flex-container">
  <div class="content">
    <div class="container-xl px-4 mt-0">
      <nav class="nav nav-borders">
        <a class="nav-link active ms-0" href="#">Users Page</a>
      </nav>
      <hr class="mt-0 mb-4">
      <div class="container d-flex justify-content-center">
        <div class="col-md-10">
          <table class="table align-middle mb-0 bg-white">
            <thead class="bg-light">
              <tr>
                <th>Name</th>
                <th>Age</th>
                <th>Email</th>
                <th>Username</th>
                <th>Password</th>
                <th>Actions</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="cus" items="${customer}">
                <tr>
                  <td>
                    <div class="d-flex align-items-center">
                      <img src="assets/users.png" alt="" style="width: 45px; height: 45px" class="rounded-circle" />
                      <div class="ms-3">
                        <p class="fw-bold mb-1">${cus.name}</p>
                        <p class="text-muted mb-0">${cus.email}</p>
                      </div>
                    </div>
                  </td>
                  <td>
                    <p class="fw-normal mb-1">${cus.age}</p>
                  </td>
                  <td>
                    <span class="badge bg-success rounded-pill">${cus.email}</span>
                  </td>
                  <td>${cus.username}</td>
                  <td>
                    <c:choose>
                      <c:when test="${fn:length(cus.password) > 0}">
                        <c:forEach begin="1" end="${fn:length(cus.password)}" var="i"> *</c:forEach>
                      </c:when>
                      <c:otherwise>No Password</c:otherwise>
                    </c:choose>
                  </td>
                  <td>
                    <form action="profile" method="post" style="display: inline;">
                      <input type="hidden" name="email" value="${cus.email}">
                      <button type="submit" class="btn btn-sm btn-outline-primary mx-1">More</button>
                    </form>
                    <form action="deleteprof" method="post" style="display: inline;">
                      <input type="hidden" name="email" value="${cus.email}">
                      <button type="submit" class="btn btn-sm btn-outline-danger mx-1">Delete</button>
                    </form>
                  </td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
  <%@ include file="components/footer.jsp" %>
</div>
<script src="../bootstrap/js/bootstrap.bundle.min.js"></script>
