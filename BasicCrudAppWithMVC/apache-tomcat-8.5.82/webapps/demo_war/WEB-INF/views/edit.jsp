<%@ include file="header.jsp"%>

<!-- bootstrap navbar end -->

<h1> JavaServer Pages (JSP) Learn </h1>
<!-- <h1>Hello My name is: ${employee.name}</h1>   -->

<!-- bootstrap form control start here -->
<div class="main">
    <div class="row">
        <div class="col col-sm-8 col-sm-offset-2">
            <div class="mb-3">
            <form action="/update" method="get" class="m-3">
                <input type="text" id="id" name="id" value="${employee.id}" hidden="hidden">
                <div class="mb-3">
                    <label for="name" class="form-label">Your Roll:</label>
                    <input type="text" class="form-control" id="roll" name="roll" value="${employee.roll}">
                </div>
                <div class="mb-3">
                    <label for="name" class="form-label">Your Name:</label>
                    <input type="text" class="form-control" id="name" name="name" value="${employee.name}">
                </div>
                <div class="mb-3">
                    <label for="name" class="form-label">Your Age:</label>
                    <input type="text" class="form-control" id="age" name="age" value="${employee.age}">
                </div>
                <!-- <div class="mb-3">
                    <label for="email" class="form-label">Your Email:</label>
                    <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp">
                    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                  </div> -->
                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" id="checbox">
                    <label class="form-check-label" for="exampleCheck1">Check me out</label>
                </div>
                <button type="submit" class="btn btn-primary">Update</button>
            </form>

        </div>
    </div>
</div>

<!-- bootstrap form control end here -->



<br>

<%@ include file="footer.jsp"%>