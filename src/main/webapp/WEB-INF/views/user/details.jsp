<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <h1 class="h3 mb-0 text-gray-800">Profile Details</h1>
                </div>
                <!-- Page Content-->
                <div class="row">
                    <div class="col-lg-4">
                        <!-- Basic Card Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Profile Picture</h6>
                            </div>
                            <div class="card-body text-center">
                                <img class="card-img-top mb-5 mb-md-0" src="/theme/assets/img/users/person1.jpg" alt="..." />
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-8">
                        <!-- Basic Card Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Account Details</h6>
                            </div>
                            <div class="card-body">
                                    <!-- Form Group (username)-->
                                    <div class="mb-3">
                                        <label class="small mb-1" for="username">Username</label>
                                        <div class="form-control" id="username">value="username"</div>
                                    </div>
                                    <!-- Form Row-->
                                    <div class="row gx-3 mb-3">
                                        <!-- Form Group (first name)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="firstName">First name</label>
                                            <div class="form-control" id="firstName">value="Valerie"</div>
                                        </div>
                                        <!-- Form Group (last name)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="lastName">Last name</label>
                                            <div class="form-control" id="lastName">value="Luna"></div>
                                        </div>
                                    </div>
                                    <!-- Form Row -->
                                    <div class="row gx-3 mb-3">
                                        <!-- Form Group (city)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="city">City</label>
                                            <div class="form-control" id="city">value="Warszawa"></div>
                                        </div>
                                        <!-- Form Group (street)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="location">Street</label>
                                            <div class="form-control" id="location">value="San Francisco, CA"></div>
                                        </div>
                                    </div>
                                    <!-- Form Row -->
                                    <div class="row gx-3 mb-3">
                                        <!-- Form Group (number)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="number">Number</label>
                                            <div class="form-control" id="number">value="23"></div>
                                        </div>
                                        <!-- Form Group (post code)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="postCode">Post Code</label>
                                            <div class="form-control" id="postCode"> value="45-987"></div>
                                        </div>
                                    </div>
                                    <!-- Form Group (email address)-->
                                    <div class="mb-3">
                                        <label class="small mb-1" for="emailAddress">Email address</label>
                                        <div class="form-control" id="emailAddress"> value="name@example.com"></div>
                                    </div>
                                    <!-- Form Row-->
                                    <div class="row gx-3 mb-3">
                                        <!-- Form Group (phone number)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="phone">Phone number</label>
                                            <div class="form-control" id="phone"> value="555-123-456"></div>
                                        </div>
                                        <!-- Form Group (agreement)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="nextLent">Do you agree to let others borrow your books to others?</label>
                                            <div class="form-control" id="nextLent"> value="Yes/No"></div>
                                        </div>
                                    </div>
                            </div>
                        </div>
                    </div>
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
</body>

</html>

