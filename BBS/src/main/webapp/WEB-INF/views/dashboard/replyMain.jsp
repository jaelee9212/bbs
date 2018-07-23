<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navigation.jsp" %>
	<div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card ">
                <div class="card-header card-header-rose card-header-text">
                  <div class="card-text">
                    <h4 class="card-title">Form Elements</h4>
                  </div>
                </div>
                <div class="card-body ">
                  <form method="post" action="/" class="form-horizontal">
                   <div class="row">
                      <label class="col-sm-2 col-form-label">User ID</label>
                      <div class="col-sm-10">
                        <div class="form-group">
                          <input type="text" class="form-control" value="${dashboard.userId}" disabled>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <label class="col-sm-2 col-form-label">Title</label>
                      <div class="col-sm-10">
                        <div class="form-group">
                          <input type="text" class="form-control" value="${dashboard.title}" disabled>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <label class="col-sm-2 col-form-label">Catagory</label>
                      <div class="col-sm-10">
                        <div class="form-group">
                          <input type="text" class="form-control" value="${dashboard.catagoryName}" disabled>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <label class="col-sm-2 col-form-label">Content</label>
                      <div class="col-sm-10">
                        <div class="form-group">
                          <input type="text" class="form-control" placeholder="${dashboard.content}" disabled>
                        </div>
                      </div>
                    </div>
                 	<div class="card-footer justify-content-center">
						<button type="submit" class="btn btn-rose btn-link btn-lg">reply</button>
					</div>
                  </form>
                  </div>
                </div>
              </div>
            </div>
           </div>
          </div>
        </div>
<%@ include file="../includes/footer.jsp" %>