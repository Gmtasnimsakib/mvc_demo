<%@ include file="header.jsp"%>

<h2>Student details</h2>


<div class="main p-3">
    <div class="row">
        <div class="col col-sm-8 col-sm-offset-2">

            <table border="1"align="center" class="table table-striped p-3">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Image</th>
                </tr>
                </thead>
                <tbody>



                <%--<c:forEach items="${uploadList}" var="showsuser">--%>

                    <tr>
                        <td>${uploadList.id}</td>
                        <td>${uploadList.name}</td>
                        <td style="width: 100px;height: 100px"><img src="data:image/jpeg;base64,${images}" alt="image" width="100px" height="100px"></td>
                    </tr>
                    </tr>
                <%--</c:forEach>--%>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%@ include file="footer.jsp"%>