<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Stylish Portfolio - Start Bootstrap Template</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- Simple line icons-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css" rel="stylesheet" />
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="<c:url value="/theme/css/styles.css"/>" rel="stylesheet">

</head>
<body id="page-top">
<!-- Navigation-->
<a class="menu-toggle rounded" href="#"><i class="fas fa-bars"></i></a>
<nav id="sidebar-wrapper">
    <ul class="sidebar-nav">
        <li class="sidebar-brand"><a href="#login">Start Book Sharing</a></li>
        <li class="sidebar-nav-item"><a href="#page-top">Home</a></li>
        <li class="sidebar-nav-item"><a href="#about">About</a></li>
        <li class="sidebar-nav-item"><a href="#services">How it work</a></li>
        <li class="sidebar-nav-item"><a href="#bookshelf">Bookshelf</a></li>
        <li class="sidebar-nav-item"><a href="#contact">Contact</a></li>
    </ul>
</nav>
<!-- Header-->
<header class="masthead d-flex align-items-center">
    <div class="container px-4 px-lg-5 text-center">
        <h1 class="mb-1">Bookshelf</h1>
        <h3 class="mb-5"><em>A Free Book sharing application</em></h3>
        <a class="btn btn-primary btn-xl" href="#about">Find Out More</a>
    </div>
</header>
<!-- Call to Action-->
<section class="content-section bg-primary text-white" id="login">
    <div class="container px-4 px-lg-5 text-center">
        <h2 class="mb-4">The buttons below are impossible to resist...</h2>
        <a class="btn btn-xl btn-light me-4" href="#!">Log in</a>
        <a class="btn btn-xl btn-dark" href="#!">Sign Up</a>
    </div>
</section>
<!-- About-->
<section class="callout content-section bg-light" id="about">
    <div class="container px-4 px-lg-5 text-center">
        <div class="row gx-4 gx-lg-5 justify-content-center">
            <div class="col-lg-10">
                <h2 class="mx-auto mb-5">About <em>Bookshelf</em> application</h2>
                <p class="lead mb-5">
                    Bookshelf allows you to exchange printed books between friends and other people in your city.<br>
                    With this app you will get access to various printed books from private libraries of app users.<br>
                    Thanks to this application, you will no longer have to remember who you borrowed the book from,
                    or who you borrowed it from, and when you have to return it.<br>
                    The application allows you to make notes of the selected book.
                    Of course, Bookshelf lets you read books for free.
                </p>
                <a class="btn btn-dark btn-xl" href="#services">What We Offer</a>
            </div>
        </div>
    </div>
</section>
<!-- Services-->
<section class="content-section bg-primary text-white text-center" id="services">
    <div class="container px-4 px-lg-5">
        <div class="content-section-heading">
            <h3 class="text-secondary mb-0">How it work</h3>
            <h2 class="mb-5">What We Offer</h2>
        </div>
        <div class="row gx-4 gx-lg-5">
            <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
                <span class="service-icon rounded-circle mx-auto mb-3"><i class="icon-screen-smartphone"></i></span>
                <h4><strong>Mobility</strong></h4>
                <p class="text-faded mb-0">You can use Bookshelf app on a phone whenever you have got an Internet!</p>
            </div>
            <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
                <span class="service-icon rounded-circle mx-auto mb-3"><i class="icon-pencil"></i></span>
                <h4><strong>Notes</strong></h4>
                <p class="text-faded mb-0">You can make notes about books you have read. <br>
                    Mark where the book is on the shelf. </p>
            </div>
            <div class="col-lg-3 col-md-6 mb-5 mb-md-0">
                <span class="service-icon rounded-circle mx-auto mb-3"><i class="icon-like"></i></span>
                <h4><strong>Shared</strong></h4>
                <p class="text-faded mb-0">
                    You search for a book, contact the owner, arrange to borrow it and return it.
                    It's so simple.<i class="fas fa-heart"></i>
                </p>
            </div>
            <div class="col-lg-3 col-md-6">
                <span class="service-icon rounded-circle mx-auto mb-3"><i class="icon-mustache"></i></span>
                <h4><strong>Connect the people</strong></h4>
                <p class="text-faded mb-0">You meet new people and can talk about the books you've read.</p>
            </div>
        </div>
    </div>
</section>
<section class="content-section" id="bookshelf">
    <div class="container px-4 px-lg-5">
        <div class="content-section-heading text-center">
            <h3 class="text-secondary mb-0"><a class="nav-link" href="<c:url value="/bookshelf"/>">Bookshelf</a></h3>
            <h2 class="mb-5">Recent Books</h2>
        </div>
        <div class="row gx-0">
            <div class="col-lg-6">
                <a class="portfolio-item" href="#!">
                    <div class="caption">
                        <div class="caption-content">
                            <div class="h2">Stationary</div>
                            <p class="mb-0">A yellow pencil with envelopes on a clean, blue backdrop!</p>
                        </div>
                    </div>
                    <img class="img-fluid" src="theme/assets/img/portfolio-1.jpg" alt="..." />
                </a>
            </div>
            <div class="col-lg-6">
                <a class="portfolio-item" href="#!">
                    <div class="caption">
                        <div class="caption-content">
                            <div class="h2">Ice Cream</div>
                            <p class="mb-0">A dark blue background with a colored pencil, a clip, and a tiny ice cream cone!</p>
                        </div>
                    </div>
                    <img class="img-fluid" src="theme/assets/img/portfolio-2.jpg" alt="..." />
                </a>
            </div>
            <div class="col-lg-6">
                <a class="portfolio-item" href="#!">
                    <div class="caption">
                        <div class="caption-content">
                            <div class="h2">Strawberries</div>
                            <p class="mb-0">Strawberries are such a tasty snack, especially with a little sugar on top!</p>
                        </div>
                    </div>
                    <img class="img-fluid" src="theme/assets/img/portfolio-3.jpg" alt="..." />
                </a>
            </div>
            <div class="col-lg-6">
                <a class="portfolio-item" href="#!">
                    <div class="caption">
                        <div class="caption-content">
                            <div class="h2">Workspace</div>
                            <p class="mb-0">A yellow workspace with some scissors, pencils, and other objects.</p>
                        </div>
                    </div>
                    <img class="img-fluid" src="theme/assets/img/portfolio-4.jpg" alt="..." />
                </a>
            </div>
        </div>
    </div>
</section>

<!-- Map-->
<div class="map" id="contact">
    <iframe src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe>
    <br />
    <small><a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A"></a></small>
</div>
<!-- Footer-->
<footer class="footer text-center">
    <div class="container px-4 px-lg-5">
        <ul class="list-inline mb-5">
            <li class="list-inline-item">
                <a class="social-link rounded-circle text-white mr-3" href="#!"><i class="icon-social-facebook"></i></a>
            </li>
            <li class="list-inline-item">
                <a class="social-link rounded-circle text-white mr-3" href="#!"><i class="icon-social-twitter"></i></a>
            </li>
            <li class="list-inline-item">
                <a class="social-link rounded-circle text-white" href="#!"><i class="icon-social-github"></i></a>
            </li>
        </ul>
        <p class="text-muted small mb-0">Copyright &copy; Your Website 2021</p>
    </div>
</footer>
<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top"><i class="fas fa-angle-up"></i></a>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="theme/js/scripts.js"></script>
</body>
</html>
