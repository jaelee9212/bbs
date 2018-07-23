<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/navigation.jsp" %>
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-icon card-header-rose">
                  <div class="card-icon">
                    <i class="material-icons">perm_identity</i>
                  </div>
                  <h4 class="card-title">Create a Query -
                    <small class="category">Share your Story</small>
                  </h4>
                </div>
                <div class="card-body">
                  <form method="post" action="createDashboard">
                    <div class="row">
                      <div class="col-md-5">
                        <div class="form-group">
                          <label class="bmd-label-floating">Username: ${user.username}</label>
                        </div>
                      </div>
                      <div class="col-md-5">
                        <div class="form-group">
                          <label class="bmd-label-floating">User ID: ${user.userId}</label>
                        </div>
                      </div>
                    <div class="col-md-12">
		              <div class="form-group">
		                  <h6 class="category">Title</h6>
		                  <input type="text" class="form-control" name="title"/>
		              </div>
		             </div>
		             <div class="col-md-12">
		              	<div class="form-group">
		                  <h6 class="category">Catagory - Choose one option</h6>
		                    <div>
							    <input type="radio" name="catagoryid" value=1>
							    <label for="contactChoice1">Nature</label>
							    <input type="radio" name="catagoryid" value=2>
							    <label for="contactChoice1">City</label>
							    <input type="radio" name="catagoryid" value=3>
							    <label for="contactChoice1">lake</label>
							</div>
		             	</div>
			         </div>
                      <div class="col-md-12">
                          <div class="form-group">
                           	<h6 class="category">Content</h6>
                            <textarea class="form-control" rows="5" name="content"></textarea>
                          </div>
                      </div>
                     </div>
                    <button type="submit" class="btn btn-rose pull-right">Update Profile</button>
                    <div class="clearfix"></div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
           </div>
         </div>
       </div>
<%@ include file="../includes/footer.jsp" %>