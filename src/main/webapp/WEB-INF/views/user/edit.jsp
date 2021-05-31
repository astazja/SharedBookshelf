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
                    <h1 class="h3 mb-0 text-gray-800">Edit Profile</h1>
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
                                <img class="card-img-top mb-5 mb-md-0" src="theme/assets/img/users/person1.jpg" alt="..." />
                                <div class="small font-italic text-muted mb-4">JPG no larger then 5MB</div>
                                <input class="form-control text-center me-3"  type="hidden" value="1" style="max-width: 3rem" />
                                <button class="btn btn-outline-dark flex-shrink-0 btn-block" type="button">
                                    Upload new image
                                </button>

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
                                <form>
                                    <!-- Form Group (username)-->
                                    <div class="mb-3">
                                        <label class="small mb-1" for="inputUsername">Username (how your name will appear to other users on the site)</label>
                                        <input class="form-control" id="inputUsername" type="text" placeholder="Enter your username" value="username">
                                    </div>
                                    <!-- Form Row-->
                                    <div class="row gx-3 mb-3">
                                        <!-- Form Group (first name)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="inputFirstName">First name</label>
                                            <input class="form-control" id="inputFirstName" type="text" placeholder="Enter your first name" value="Valerie">
                                        </div>
                                        <!-- Form Group (last name)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="inputLastName">Last name</label>
                                            <input class="form-control" id="inputLastName" type="text" placeholder="Enter your last name" value="Luna">
                                        </div>
                                    </div>
                                    <!-- Form Row        -->
                                    <div class="row gx-3 mb-3">
                                        <!-- Form Group (city)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="inputCity">City</label>
                                            <input class="form-control" id="inputCity" type="text" placeholder="Enter your city" value="Warszawa">
                                        </div>
                                        <!-- Form Group (street)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="inputLocation">Street</label>
                                            <input class="form-control" id="inputLocation" type="text" placeholder="Enter your street" value="San Francisco, CA">
                                        </div>
                                    </div>
                                    <!-- Form Row        -->
                                    <div class="row gx-3 mb-3">
                                        <!-- Form Group (number)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="inputNumber">Number</label>
                                            <input class="form-control" id="inputNumber" type="number" placeholder="Enter your number" value="23">
                                        </div>
                                        <!-- Form Group (post code)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="inputPostCode">Post Code</label>
                                            <input class="form-control" id="inputPostCode" type="text" placeholder="Enter your post code" value="45-987">
                                        </div>
                                    </div>
                                    <!-- Form Group (email address)-->
                                    <div class="mb-3">
                                        <label class="small mb-1" for="inputEmailAddress">Email address</label>
                                        <input class="form-control" id="inputEmailAddress" type="email" placeholder="Enter your email address" value="name@example.com">
                                    </div>
                                    <!-- Form Row-->
                                    <div class="row gx-3 mb-3">
                                        <!-- Form Group (phone number)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="inputPhone">Phone number</label>
                                            <input class="form-control" id="inputPhone" type="tel" placeholder="Enter your phone number" value="555-123-456">
                                        </div>
                                        <!-- Form Group (agreement)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="inputNextLent">Do you agree to let others borrow your books to others?</label>
                                            <input class="form-control" id="inputNextLent" type="text" name="birthday" placeholder="Enter your birthday" value="Yes/No">
                                        </div>
                                    </div>
                                    <!-- Save changes button-->
                                    <button class="btn btn-primary" type="button">Save changes</button>
                                </form>
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

