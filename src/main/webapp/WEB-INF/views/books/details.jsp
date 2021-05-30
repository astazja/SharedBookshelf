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
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="<c:url value="/theme/css/sb-admin-2.css"/>" rel="stylesheet">
</head>
<body id="page-top">
<!-- Page Wrapper -->
<div id="wrapper">
    <!-- Sidebar -->
    <c:import url="../dashboardSidebar.jsp"></c:import>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <c:import url="../dashboardTopbar.jsp"></c:import>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Book Details </h1>
                    <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                            class="fas fa-download fa-sm text-white-50"></i>Back to List</a>
                </div>
                <!-- Page Content-->

                <!-- Product section-->
                <section class="py-5">
                    <div class="container px-4 px-lg-5 my-5">
                        <div class="row gx-4 gx-lg-5 align-items-center">
                            <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="theme/assets/img/bookCover/book6.jpg" alt="..." /></div>
                            <div class="col-md-6">
                                <div class="small mb-1">Genre</div>
                                <h1 class="display-5 fw-bolder">Title</h1>
                                <div class="fs-5 mb-5">
                                    <span>Author</span>
                                    <p >Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium at dolorem quidem modi.
                                        Nam sequi consequatur obcaecati excepturi alias magni, accusamus eius blanditiis delectus ipsam minima ea iste laborum vero?</p>
                                    <div class="d-flex">
                                        <input class="form-control text-center me-3" id="inputQuantity" type="hidden" value="1" style="max-width: 3rem" />
                                        <button class="btn btn-outline-dark flex-shrink-0 btn-block" type="button">
                                            <i class="bi-cart-fill me-1"></i>
                                            Borrow
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="fs-5 mb-5">

                                    <div class="p-3 bg-blue-100 text-white border-left-warning profil">
                                        <span class="text-decoration-line-through">Belongs to: </span>
                                        <span><a href="#">Imię i nazwisko właściciela</a></span>
                                    </div>
                                    <div class="p-3 bg-blue-200 text-white border-left-warning">
                                        <span class="text-decoration-line-through">Publisher: </span>
                                        <span>Helion</span></div>
                                    <div class="p-3 bg-blue-300 text-white border-left-warning">
                                        <span class="text-decoration-line-through">Copyright: </span>
                                        <span>2021</span>
                                    </div>
                                    <div class="p-3 bg-blue-400 text-white border-left-warning">
                                        <span class="text-decoration-line-through">Book Size: </span>
                                        <span>234 Pages</span>
                                    </div>
                                    <div class="p-3 bg-blue-500 text-white border-left-warning">
                                        <span class="text-decoration-line-through">ISBN: </span>
                                        <span>12234677899</span>
                                    </div>
                                    <div class="p-3 bg-blue-600 text-white border-left-warning profil">
                                        <span class="text-decoration-line-through">Who has one: </span>
                                        <span><a href="#">Imię i nazwisko właściciela</a></span>
                                    </div>
                                    <div class="p-3 bg-blue-700 text-white border-left-warning">
                                        <span class="text-decoration-line-through">Bookshelf: </span>
                                        <span>Where i have one</span>
                                    </div>
                                    <div class="p-3 bg-blue-800 text-white border-left-warning profil">
                                        <span class="text-decoration-line-through">Notes: </span>
                                        <span><a href="#">My notes</a></span>
                                    </div>
                                    <div class="p-3 bg-blue-900 text-white border-left-warning">
                                        <span class="text-decoration-line-through">Book back: </span>
                                        <span>30.05.2021 or The owner has one.</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

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
<script src="theme/vendor/jquery/jquery.min.js"></script>
<script src="theme/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="theme/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="theme/js/sb-admin-2.min.js"></script>

<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="theme/js/scripts.js"></script>
</body>

</html>

