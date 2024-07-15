<%@ include file="header.jsp" %>


<!-- bootstrap form control start here -->

    <div class="main">
    <div class="row">
    <div class="col col-sm-8 col-sm-offset-2">
        <p>Name:</p>
        <img src="data:image/jpeg;base64,${baase64uploadUserValue}" alt="image" width="100px" height="100px">
       <%-- <img src="data:image/jpeg;base64,${images.get(uploadUser.id)}" alt="image" width="100px" height="100px">--%>
    <form action="/upupdate" method="post" enctype="multipart/form-data" class="m-3">
    <div class="mb-3">
    <%--<input type="text" id="id" name="id" value="${uploaduser.id}" hidden="hidden">
    <div class="mb-3">--%>
    <label for="id" class="form-label">Your Id:</label>
    <input type="text" class="form-control" id="id" name="id" value="${uploadUserValue.id}">
    </div>
    <div class="mb-3">
    <label for="name" class="form-label">Your Name:</label>
    <input type="text" class="form-control" id="name" name="name" value="${uploadUserValue.name}">
    </div>
    <div class="mb-3">
    <label for="file" class="form-label">Your File:</label>
    <input type="file" class="form-control" id="file" name="file" value="" alt="image">
    </div>
    <!-- <div class="mb-3">
    <label for="email" class="form-label">Your Email:</label>
    <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
    </div> -->
    <div class="mb-3 form-check">
    <%--@declare id="examplecheck1"--%><input type="checkbox" class="form-check-input" id="checbox">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
    </div>
    <button type="submit" class="btn btn-primary">Update</button>
    </form>
    </div>
    </div>
    </div>

    <!-- bootstrap form control end here -->

<%@include file="footer.jsp"%>