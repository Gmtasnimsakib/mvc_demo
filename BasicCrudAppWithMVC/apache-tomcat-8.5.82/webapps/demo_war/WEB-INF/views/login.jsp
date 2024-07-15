<%@ include file="header.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="main_login_form">
    <div class="row">
        <div class="col col-sm-4 col-sm-offset-4">

    <sec:authorize access="isAuthenticated()">
        <h1 style="height: 400px">Thank's for browse! </h1>
    </sec:authorize>
    <sec:authorize access="!isAuthenticated()">

        <c:url value="/login" var="loginVar"/>
            <table style="border: 2px solid #40e0d2; height: 300px; margin-top: 50px;background: rgba(18,18,19,0.98);color:#fff" class="table">
            <thead>
            <c:if test="${param.logout}">
                <p class="alert alert-success">You're successfully logout!</p>
            </c:if>
            </thead>
            <tbody>

            <td>

            <form name='loginForm'  action="${loginVar}" method="post">
                <h2 style="text-align: center">Login</h2>
                <div class="mb-3 mt-3">
                    <label for="username" class="form-label">Name address</label>
                    <input type="text" class="form-control"  name="username" id="username" placeholder="username"/><br>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" name="password" id="password" placeholder="password"/><br>
                </div>
                <sec:csrfInput/>
                <button type="submit" class="btn btn-primary" style="background: #14645e">Log in</button>
            </form>
            </td>
            </tbody>


            </table>
</sec:authorize>
        </div>
    </div>
</div>




<%@ include file="footer.jsp" %>

