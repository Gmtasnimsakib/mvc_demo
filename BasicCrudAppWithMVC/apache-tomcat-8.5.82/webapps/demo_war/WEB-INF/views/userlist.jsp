<%@include file="header.jsp"%>

<br>
<div class="main p-3">
    <div class="row">
        <div class="col col-sm-8 col-sm-offset-2">
            <table border="1"align="center" class="table table-striped p-3">
                <thead>
                <tr>
                    <%--          <th>Id</th>--%>
                    <th>ID</th>
                    <th>User Name</th>
                    <th>Password</th>
                    <th>Email</th>
                    <th>Boolean</th>

                </tr>
                </thead>
                <tbody>
                <c:forEach items="${allUsers}" var="allusers">
                    <tr>
                            <%--            <td>${shows.id}</td>--%>
                        <td>${allusers.id}</td>
                        <td>${allusers.username}</td>
                        <td>${allusers.password}</td>
                        <td>${allusers.email}</td>
                        <td>${allusers.enabled}</td>
                        <%--<td>${authoritys(allusers.id)}</td>--%>

                        <td> <a type="button" href="/useredit?id=${allusers.id}"class="btn btn-primary"><i class="fa-solid fa-pen-to-square"></i>Edit</a></td>
                        <td><a type="button" href="/userdelete?id=${allusers.id}" class="btn btn-danger"><i class="fa-solid fa-trash-can"></i>Delete</a></td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>


        </div>
    </div>
</div>





<%@include file="footer.jsp"%>
