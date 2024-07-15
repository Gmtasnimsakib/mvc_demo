<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>spring security learn Babu</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="<c:url value="/resources/css/test.css"/>"/>
    <link rel="stylesheet" href="/resources/css/bootstrap-3.4.1.min.css">
    <link rel="stylesheet" href="/resources/css/fontawesome-6.2.1.all.min.css">
    <link rel="stylesheet" href="/resources/css/fontawesome-6.2.1.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="/resources/css/bootstrap-3.4.1.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">MunibahWebSite</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="${pageContext.request.contextPath}/home">Home</a></li>
            <li><a href="http://localhost:8080/table">Table</a></li>
            <li><a href="http://localhost:8080/form">Contact Us</a></li>
            <li><a href="http://localhost:8080/user">About Us</a></li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Students
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a href="http://localhost:8080/upshow">Students Documents</a>

                    <div class="dropdown-divider"></div>
                    <a href="http://localhost:8080/fileupload">Students Registration</a>
                </div>
            </li>
        </ul>



        <ul class="nav navbar-nav navbar-right">
            <li><a href="/createuser"><i class="fa-solid fa-user-plus"></i> Sign Up</a></li>
            <%--            <c:url value="/logout" var="logoutVar"/>--%>
            <%--            <li><a href="/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>--%>
            <%--            <li><a href="${logoutVar}"><span class="glyphicon glyphicon-log-in"></span>Logout</a>--%>
            <%--            </li>--%>


            <%--            ________________________________________________________________--%>


            <sec:authorize access="hasRole('ROLE_USER')" var="authenticated">

                <li>
                    <p class="navbar-text">
                        Welcome
                        <sec:authentication property="principal.username"/>
                        <a href="${pageContext.request.contextPath}/logout">
                            <i class="fa-solid fa-right-from-bracket"></i>
                            Logout</a>
                    </p>
                </li>
            </sec:authorize>
            <sec:authorize access="!isAuthenticated()">
                <li><a href="${pageContext.request.contextPath}/login">
                    <i class="fa fa-sign-in" aria-hidden="true"></i>
                    Login</a></li>
            </sec:authorize>


            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <li>
                    <p class="navbar-text">
                        Welcome
                        <sec:authentication property="principal.username"/>
                        <a href="${pageContext.request.contextPath}/logout"><i class="fa-solid fa-right-from-bracket"></i>Logout</a>
                    </p>
                </li>
            </sec:authorize>

        </ul>
    </div>
</nav>

