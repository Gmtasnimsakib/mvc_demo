<%@ include file="header.jsp"%>
<!-- bootstrap navbar end -->

<h1>Hello My name is: ${employeelist.get(0).getName()}</h1>
<br>
<div class="main p-3">
  <div class="row">
    <div class="col col-sm-8 col-sm-offset-2">
      <table border="1"align="center" class="table table-striped p-3">
        <thead>
        <tr>
<%--          <th>Id</th>--%>
          <th>Roll</th>
          <th>Name</th>
          <th>Age</th>
          <th>Edit</th>
          <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${employeelist}" var="shows">
          <tr>
<%--            <td>${shows.id}</td>--%>
            <td>${shows.roll}</td>
            <td>${shows.name}</td>
            <td>${shows.age}</td>
            <!-- <td><a href="last?roll=">Edit</a></td>
                            <td><a href="/delete?roll=">Delete</a></td> -->
            <td> <a type="button" href="/edit?id=${shows.id}"class="btn btn-primary"><i class="fa-solid fa-pen-to-square"></i>Edit</a></td>
            <td><a type="button" href="/delete?id=${shows.id}" class="btn btn-danger"><i class="fa-solid fa-trash-can"></i>Delete</a></td>
          </tr>
        </c:forEach>

        </tbody>
      </table>


    </div>
  </div>
</div>


<br>
<br>
<br>
<br>
<%@ include file="footer.jsp"%>