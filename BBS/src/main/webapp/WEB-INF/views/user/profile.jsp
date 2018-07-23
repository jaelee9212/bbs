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
                  <h4 class="card-title">Your Profile -
                    <small class="category">Update info if you want!</small>
                  </h4>
                </div>
                <div class="card-body">
                  <form method="post" action="/updateProfile/${user.aboutMe}">
                    <div class="row">
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating"></label>
                          <input type="text" class="form-control" placeholder="${user.username}" disabled>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating"></label>
                          <input type="email" class="form-control" placeholder="${user.email}" disabled>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label class="bmd-label-floating"></label>
                          <input type="text" class="form-control" placeholder="${user.address}" disabled>
                        </div> 
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating"></label>
                          <input type="text" class="form-control" placeholder="${user.city}" disabled>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating"></label>
                          <input type="text" class="form-control" placeholder="${user.country}" disabled>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating"></label>
                          <input type="text" class="form-control" placeholder="${user.postalCode}" disabled>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label>About Me</label>
                          <div class="form-group">
                            <label class="bmd-label-floating"></label>
                            <textarea class="form-control" rows="5" placeholder=${user.aboutMe}></textarea>
                          </div>
                        </div>
                      </div>
                    </div>
                    <button type="submit" class="btn btn-rose pull-right">Update</button>
                    <div class="clearfix"></div>
                  </form>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card card-profile">
                <div class="card-avatar">
                  <a href="#pablo">
                    <img class="img" src="../../assets/img/faces/marc.jpg" />
                  </a>
                </div>
                <div class="card-body">
                  <h6 class="card-category text-gray">CEO / Co-Founder</h6>
                  <h4 class="card-title">Alec Thompson</h4>
                  <p class="card-description">
                    Don't be scared of the truth because we need to restart the human foundation in truth And I love you like Kanye loves Kanye I love Rick Owensâ bed design but the back is...
                  </p>
                  <a href="#pablo" class="btn btn-rose btn-round">Follow</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
</body>
<%@ include file="../includes/footer.jsp" %>
</html>