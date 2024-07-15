<%@ include file="header.jsp" %>
<h2>Registration Form</h2>
<div class="main">
    <div class="row">
        <div class="col col-sm-8 col-sm-offset-2">
            <form action="/filesave" method="post" enctype="multipart/form-data" class="m-3">
                <div class="mb-3">
                    <label for="id" class="form-label">Your ID:</label>
                    <input type="text" class="form-control" id="id" name="id">
                </div>

                <div class="mb-3">
                    <label for="name" class="form-label">Your Name:</label>
                    <input type="text" class="form-control" id="name" name="name">
                </div>
                <div class="mb-3">
                    <label for="file" class="form-label">Your File:</label>
                    <input type="file" class="form-control" id="file" name="file">
                </div>
                <button type="submit" class="btn btn-primary">Upload</button>
            </form>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>