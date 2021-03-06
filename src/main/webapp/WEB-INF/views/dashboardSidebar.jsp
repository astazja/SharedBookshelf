<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<c:url value="/bookshelf"/>">
        <div class="sidebar-brand-text mx-3">Bookshelf</div>
    </a>
    <!-- Divider -->
    <hr class="sidebar-divider my-0">
    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="<c:url value="/book/user1"/>">
            <span>Yours Bookshelf</span>
        </a>
    </li>
    <!-- Divider -->
    <hr class="sidebar-divider">
    <!-- Heading -->
    <div class="sidebar-heading">
        Interface
    </div>
    <!-- Nav Item - Home -->
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/"/>">
            <span>Home</span>
        </a>
    </li>
    <!-- Nav Item - Notes -->
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/notes/allBooks"/>">
            <span>Notes</span>
        </a>
    </li>
    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
           aria-expanded="true" aria-controls="collapseTwo">
            <span>List of Books</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Books:</h6>
                <a class="collapse-item" href="<c:url value="/book/all"/>">All the books</a>
                <a class="collapse-item" href="<c:url value="/all/my"/>">My list of books</a>
                <a class="collapse-item" href="<c:url value="/book/borrow/all/lent/user1"/>">Lent to someone</a>
                <a class="collapse-item" href="<c:url value="/book/borrow/all/user1"/>">Borrowed from someone</a>
            </div>
        </div>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Account settings
    </div>
    <!-- Nav Item - Logout -->
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/profile/show/1"/>">
            <span>Profile</span>
        </a>
    </li>
    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
           aria-expanded="true" aria-controls="collapsePages">
            <span>Settings</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Account Modification:</h6>
                <a class="collapse-item" href="<c:url value="/profile/edit/1"/>">Edit Data</a>
                <a class="collapse-item" href="register.html">Change Password</a>
                <a class="collapse-item" href="<c:url value="/profile/delete/${param.id}"/>">Delete Account</a>
            </div>
        </div>
    </li>
    <!-- Nav Item - Logout -->
    <li class="nav-item">
        <a class="nav-link" href="tables.html" data-toggle="modal" data-target="#logoutModal">
            <span>Logout</span>
        </a>
    </li>
    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>
</ul>
<!-- End of Sidebar -->


<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>
<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">??</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="<c:url value="/"/>">Logout</a>
            </div>
        </div>
    </div>
</div>

