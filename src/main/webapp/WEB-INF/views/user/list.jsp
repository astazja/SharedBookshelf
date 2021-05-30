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
                    <h1 class="h3 mb-0 text-gray-800">List of Notes for the Book of the Title: <em>tytul</em></h1>
                    <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                            class="fas fa-download fa-sm text-white-50"></i>Add Note</a>
                </div>

                <!-- Page Content-->
                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">List of Notes</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>Photo</th>
                                    <th>Title</th>
                                    <th>Description</th>
                                    <th>Book finished</th>
                                    <th>Read to</th>
                                    <th>Important page</th>
                                    <th>Belongs to:</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="table-photo">
                                        <img class="card-img-top img-table" src="theme/assets/img/notes/note1.jpg" alt="..." />
                                    </td>
                                    <td>System Architect</td>
                                    <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ultricies
                                        sodales ante vitae lacinia. Integer ut est orci. Vivamus mauris nunc, dictum a
                                        vehicula et, gravida nec lorem. Curabitur elementum dictum dui nec pharetra.
                                        Mauris pulvinar, sem sit amet sollicitudin interdum, nibh mi efficitur ex, id
                                        scelerisque est nunc sed ante. Pellentesque sodales feugiat orci vel bibendum.
                                        Nunc sit amet magna blandit, convallis nunc et, malesuada ante. Vestibulum nisl
                                        mi, facilisis nec massa vitae, posuere efficitur quam. Vivamus eget diam commodo,
                                        tempus velit eget, consequat orci. Sed fringilla odio et dictum mollis.
                                    </td>
                                    <td>Yes/No</td>
                                    <td>56 of BookSize</td>
                                    <td>56, 45, 76, 98</td>
                                    <td>
                                        <a href="#">Imię i nazwisko właściciela</a>
                                    </td>
                                    <td>
                                        <a class="btn btn-bookshelf" href="#!">Edit Note</a>
                                        <a class="btn btn-bookshelf" href="#!">Remove Note</a>
                                        <a class="btn btn-bookshelf" href="#!">Book details</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="table-photo">
                                        <img class="card-img-top img-table" src="theme/assets/img/notes/note2.jpg" alt="..." />
                                    </td>
                                    <td>System Architect</td>
                                    <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ultricies
                                        sodales ante vitae lacinia. Integer ut est orci. Vivamus mauris nunc, dictum a
                                        vehicula et, gravida nec lorem. Curabitur elementum dictum dui nec pharetra.
                                        Mauris pulvinar, sem sit amet sollicitudin interdum, nibh mi efficitur ex, id
                                        scelerisque est nunc sed ante. Pellentesque sodales feugiat orci vel bibendum.
                                        Nunc sit amet magna blandit, convallis nunc et, malesuada ante. Vestibulum nisl
                                        mi, facilisis nec massa vitae, posuere efficitur quam. Vivamus eget diam commodo,
                                        tempus velit eget, consequat orci. Sed fringilla odio et dictum mollis.
                                    </td>
                                    <td>Yes/No</td>
                                    <td>56 of BookSize</td>
                                    <td>56 45,76,98</td>
                                    <td>
                                        <a href="#">Imię i nazwisko właściciela</a>
                                    </td>
                                    <td>
                                        <a class="btn btn-bookshelf" href="#!">Edit Note</a>
                                        <a class="btn btn-bookshelf" href="#!">Remove Note</a>
                                        <a class="btn btn-bookshelf" href="#!">Book details</a>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
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

<!-- Page level plugins -->
<script src="theme/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="theme/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="theme/js/demo/datatables-demo.js"></script>
</body>

</html>



