<%@ include file="header.jsp"%>

<!-- bootstrap form control start here -->
<div class="main">
    <div class="row">
        <div class="col col-sm-8 col-sm-offset-2">
            <form action="/saveuser" method="post" class="m-3">


                <div class="mb-3">
                    <label for="username" class="form-label">Your Name:</label>
                    <input type="text" class="form-control" id="username" name="username">
                </div>

                <div class="mb-3">
                    <label for="password" class="form-label">Your Password:</label>
                    <input type="password" class="form-control" id="password" name="password">
                </div>

             <div class="mb-3">
                 <label for="email" class="form-label">Your Email:</label>
                 <input type="email" class="form-control" id="email" name="email">
               </div>

                <div class="mb-3 form-check">
                    <%--@declare id="examplecheck1"--%><input type="checkbox" class="form-check-input" id="checbox">
                    <label class="form-check-label" for="exampleCheck1">Check me out</label>
                </div>
                <button type="submit" class="btn btn-primary">Sign Up</button>
            </form>

        </div>
    </div>
</div>

<!-- bootstrap form control end here -->


<%@ include file="footer.jsp" %>