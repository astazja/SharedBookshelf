<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <link href="theme/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
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
                    <h1 class="h3 mb-0 text-gray-800">Edit Reading Progress</h1>
                    <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                            class="fas fa-download fa-sm text-white-50"></i>Back to List</a>
                </div>
                <!-- Page Content-->
                <div class="row">
                    <div class="col-lg-4">
                        <!-- Basic Card Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Book Picture</h6>
                            </div>
                            <div class="card-body text-center">
                                <img class="card-img-top mb-5 mb-md-0" src="theme/assets/img/bookCover/book6.jpg" alt="..." />
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-8">
                        <!-- Basic Card Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Book Details</h6>
                            </div>
                            <div class="card-body">
                                <form>
<%--                                <form:form method="post" modelAttribute="book">--%>
<%--                                    <form:hidden path="id"/>--%>
                                    <!-- Form Group (title)-->
                                    <div class="mb-3">
                                        <label class="small mb-1" for="inputTitle">Title</label>
                                        <div class="form-control" id="inputTitle">title</div>
                                    </div>
                                    <!-- Form Row-->
                                    <div class="row gx-3 mb-3">
                                        <!-- Form Group (author)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="inputAuthor">Author</label>
                                            <div class="form-control" id="inputAuthor">Valerie</div>
                                        </div>
                                        <!-- Form Group (owner)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="inputBelong">Belongs to:</label>
                                            <div class="form-control" id="inputBelong">Luna</div>
                                        </div>
                                    </div>
                                    <!-- Form Row-->
                                    <div class="row gx-3 mb-3">
                                        <!-- Form Group (borrowed)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="inputBorrowed">Borrowed</label>
                                            <input class="form-control" id="inputBorrowed" type="text" value="Yes/No">
                                        </div>
                                        <!-- Form Group (Recommend)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="inputRecommend">Recommend</label>
                                            <input class="form-control" id="inputRecommend" type="text" value="Yes/No">
                                        </div>
                                    </div>
                                    <!-- Form Row-->
                                    <div class="row gx-3 mb-3">
                                        <!-- Form Group (Finished)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="inputFinished">Finished</label>
                                            <input class="form-control" id="inputFinished" type="text" value="Yes/No">
                                        </div>
                                        <!-- Form Group (ReadTo)-->
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="inputReadTo">Read To</label>
                                            <input class="form-control" id="inputReadTo" type="number" value="456">
                                        </div>
                                    </div>
                                    <!-- Save changes button-->
                                    <button class="btn btn-primary" type="button">Save changes</button>
<%--                                </form:form>--%>
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

