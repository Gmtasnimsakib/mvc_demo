
<%@ include file="header.jsp"%>


<!-- bootstrap form control start here -->
<div class="main">
    <div class="row">
        <div class="col col-sm-8 col-sm-offset-2">
            <div class="mb-3">
                <form action="/userupdate" method="get" class="m-3">
                    <input type="text" id="id" name="id" value="${userid.id}" hidden="hidden">
                    <div class="mb-3">
                        <label for="username" class="form-label">Your Name:</label>
                        <input type="text" class="form-control" id="username" name="username" value="${userid.username}">
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Your Password:</label>
                        <input type="text" class="form-control" id="password" name="password" value="${userid.password}">
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Your Email:</label>
                        <input type="text" class="form-control" id="email" name="email" value="${userid.email}">
                    </div>
                    <div class="mb-3">
                        <label for="enabled" class="form-label">Your Boolean:</label>
                        <input type="text" class="form-control" id="enabled" name="enabled" value="${userid.enabled}">
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