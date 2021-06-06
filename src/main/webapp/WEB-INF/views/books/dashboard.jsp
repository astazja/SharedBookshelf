<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title><spring:message code="app.title"/></title>
    <!-- Custom fonts for this template-->
    <link href="<c:url value="/theme/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="<c:url value="/theme/css/sb-admin-2.css"/>" rel="stylesheet">
</head>
<body id="page-top">
<sec:authorize access="isAuthenticated()">
<!-- Page Wrapper -->
<div id="wrapper">
    <!-- Sidebar -->
    <c:import url="../dashboardSidebar.jsp"/>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <c:import url="../dashboardTopbar.jsp"/>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Yours Bookshelf</h1>
                    <a href="<c:url value="/book/add"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                            class="fas fa-download fa-sm text-white-50"></i>Add Book To Share</a>
                </div>
                <!-- Page Content-->
                <div class="container px-4 px-lg-7">
                    <!-- Call to Action-->
                    <div class="card text-white bg-secondary my-5 py-4 text-center">
                        <div class="card-body"><p class="text-white m-0">These are the books you borrowed. Return them to the agreed date with their owner.</p></div>
                    </div>
                    <!-- Heading Row-->
                    <c:forEach items="${borrowBooks}" var="book">
                    <div class="row gx-4 gx-lg-5 align-items-center my-5">
                        <div class="col-lg-5"><img class="img-fluid rounded px-3 px-sm-4 mt-3 mb-4" src="${book.whatBooksBorrowed.photo}" alt="..." /></div>
                        <div class="col-lg-7">
                            <h1 class="font-weight-light">${book.whatBooksBorrowed.title} <br> ${book.whatBooksBorrowed.author}</h1>
                            <p>${book.whatBooksBorrowed.description}</p>
                            <a class="btn btn-bookshelf" href="<c:url value="/notes/add"/>">Make a note</a>
                            <a class="btn btn-bookshelf" href="<c:url value="/book/show/${book.whatBooksBorrowed.id}"/>">Details</a>
                            <a class="btn btn-bookshelf" href="<c:url value="/book/borrow/back/${book.id}"/>">Give back</a>
                            <!-- Content Row -->
                            <div class="row">
                                <!-- Earnings (Monthly) Card Example -->
                                <div class="col-lg-7">
                                    <div class="card border-left-primary shadow h-100 py-2">
                                        <div class="card-body">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col mr-2">
                                                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                        Time to give back
                                                    </div>
                                                    <div class="h5 mb-0 font-weight-bold text-gray-800">${book.bookBack}</div>
                                                </div>
                                                <div class="col-auto">
                                                    <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                        <hr>
                    </c:forEach>
                    <!-- Call to Action-->
                    <div class="card text-white bg-secondary my-5 py-4 text-center">
                        <div class="card-body"><p class="text-white m-0">These are your books, that you can manage.</p></div>
                    </div>
                    <c:forEach items="${books}" var="book">
                    <div class="row gx-4 gx-lg-5 align-items-center my-5">
                        <div class="col-lg-5"><img class="img-fluid rounded px-3 px-sm-4 mt-3 mb-4" src="${book.photo}" alt="..." /></div>
                        <div class="col-lg-7">
                            <h1 class="font-weight-light">${book.title} <br> ${book.author}</h1>
                            <p>${book.description}</p>
                            <a class="btn btn-bookshelf" href="<c:url value="/notes/add"/>">Make a note</a>
                            <a class="btn btn-bookshelf" href="<c:url value="/book/edit/${book.id}"/>">Edit</a>
                            <a class="btn btn-bookshelf" href="<c:url value="/book/show/${book.id}"/>">Details</a>
                            <a class="btn btn-bookshelf" href="<c:url value="/book/delete/${book.id}"/>">Remove</a>
                        </div>
                    </div>
                    <hr>
                    </c:forEach>
                </div>
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- End of Main Content -->
        <!-- Footer -->
        <footer class="sticky-footer bg-white">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span><spring:message code="app.footer"/></span>
                </div>
            </div>
        </footer>
        <!-- End of Footer -->
    </div>
    <!-- End of Content Wrapper -->
</div>
<!-- End of Page Wrapper -->

<!-- Bootstrap core JavaScript-->
<script src="<c:url value="/theme/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="/theme/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

<!-- Core plugin JavaScript-->
<script src="<c:url value="/theme/vendor/jquery-easing/jquery.easing.min.js"/>"></script>

<!-- Custom scripts for all pages-->
<script src="<c:url value="/theme/js/sb-admin-2.min.js"/>"></script>
</sec:authorize>
</body>
</html>

