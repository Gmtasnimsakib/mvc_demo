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
                    <th>Edit</th>
                    <th>Delete</th>
                    <th>View</th>
                </tr>
                </thead>
                <tbody>



               <c:forEach items="${uploadList}" var="showsuser">

                    <tr>
                       <td>${showsuser.id}</td>
                        <td>${showsuser.name}</td>
                        <td style="width: 100px;height: 100px"><img src="data:image/jpeg;base64,${images.get(showsuser.id)}" alt="image" width="100px" height="100px"></td>
                        <td> <a type="button" href="/upshowedit?id=${showsuser.id}"class="btn btn-primary"><i class="fa-solid fa-pen-to-square"></i>Edit</a></td>
                        <td><a type="button" href="/deleteUpload?id=${showsuser.id}" class="btn btn-danger"><i class="fa-solid fa-trash-can"></i>Delete</a></td>
                        <td><a type="button" href="/userview?id=${showsuser.id}" class="btn btn-primary"><i class="fa-solid fa-users-viewfinder"></i>View</a></td>
                    </tr>
                    </tr>
               </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%@ include file="footer.jsp"%>