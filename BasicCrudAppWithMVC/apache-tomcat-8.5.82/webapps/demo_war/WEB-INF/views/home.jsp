<%@ include file="header.jsp" %>
<div class="container" style="height: 425px">
    <div class="row">
        <div class="col">
            <h2> JavaServer Pages (JSP) Learn </h2>
            <sec:authorize access="isAuthenticated()">
                <h2>Its for show only authenticated any person</h2>
            </sec:authorize>

            <sec:authorize access="hasRole('ROLE_ADMIN')">
            <h2>Welcome To Admin <sec:authentication property="principal.username"/></h2>
            </sec:authorize>
            <a href="userlist">Users Link</a>
        </div>
    </div>
</div>


<br>



<%@ include file="footer.jsp" %>