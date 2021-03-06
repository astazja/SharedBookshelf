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

    <title>SB Admin 2 - Register</title>

    <!-- Custom fonts for this template-->
    <link href="<c:url value="/theme/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="<c:url value="/theme/css/sb-admin-2.min.css"/>" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
                <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                <div class="col-lg-7">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
                        </div>
                        <form:form class="user" method="post" modelAttribute="user">
                            <form:hidden path="id"/>
                            <div class="form-group">
                                <form:input class="form-control form-control-user"
                                            id="inputNick" placeholder="Username" path="username"/>
                                <form:errors path="username"/>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <form:input class="form-control form-control-user" id="firstName"
                                           placeholder="First Name" path="name"/>
                                    <form:errors path="name"/>
                                </div>
                                <div class="col-sm-6">
                                    <form:input class="form-control form-control-user" id="lastName"
                                           placeholder="Last Name" path="surname"/>
                                    <form:errors path="surname"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <form:input class="form-control form-control-user" id="inputEmail"
                                       placeholder="Email Address" path="email"/>
                                <form:errors path="email"/>
                            </div>
                            <div class="form-group">
                                <form:input class="form-control form-control-user" id="inputPhone"
                                       placeholder="Phone Number" path="phoneNumber"/>
                                <form:errors path="phoneNumber"/>
                            </div>
                            <div class="form-group">
                                <form:input class="form-control form-control-user"
                                            id="inputCity" placeholder="City" path="city"/>
                                <form:errors path="city"/>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <form:input class="form-control form-control-user"
                                                id="inputStreet" placeholder="Street" path="street"/>
                                    <form:errors path="street"/>
                                </div>
                                <div class="col-sm-6">
                                    <form:input class="form-control form-control-user"
                                                id="inputNumber" placeholder="Street Number" path="number"/>
                                    <form:errors path="number"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <form:input type="password" class="form-control form-control-user"
                                            id="inputPassword" placeholder="Password" path="password"/>
                                <form:errors path="password"/>
                            </div>
                            <button class="btn btn-primary btn-user btn-block" type="submit">
                                Register Account
                            </button>
                        </form:form>
                        <hr>
                        <div class="text-center">
                            <a class="small" href="forgot-password.html">Forgot Password?</a>
                        </div>
                        <div class="text-center">
                            <a class="small" href="login.html">Already have an account? Login!</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<!-- Bootstrap core JavaScript-->
<script src="<c:url value="/theme/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="/theme/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

<!-- Core plugin JavaScript-->
<script src="<c:url value="/theme/vendor/jquery-easing/jquery.easing.min.js"/>"></script>

<!-- Custom scripts for all pages-->
<script src="<c:url value="/theme/js/sb-admin-2.min.js"/>"></script>
</body>

</html>