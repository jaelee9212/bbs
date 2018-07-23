<%@ include file="./includes/header.jsp" %>
<%@ include file="./includes/navigation.jsp" %>
	<div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">assignment</i>
                  </div>
                  <h4 class="card-title">DataTables.net</h4>
                </div>
                <div class="card-body">
                  <div class="toolbar">
                    <!--        Here you can write extra buttons/actions for the toolbar              -->
                  </div>
                  <div class="material-datatables">
                    <table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>Title</th>
                          <th>Catagory</th>
                          <th>Content</th>
                          <th>Writer</th>
                          <th>Date</th>
                          <th>Modified Date</th>
                          <th>favourite</th>
                          <th class="disabled-sorting text-right">Actions</th>
                        </tr>
                      </thead>
                      <tbody>
                      	<c:forEach var="dashboard" items="${dashboard}">
                        <tr>
                          <td>${dashboard.dashboard_Id}</td>
                          <td><a href="/reply/${dashboard.dashboard_Id}">${dashboard.title}</a></td>
                          <td>${dashboard.catagoryName}</td>
                          <td>${dashboard.content}</td>
                          <td>${dashboard.username}</td>
                          <td>${dashboard.createdTime}</td>
                          <td>${dashboard.modifiedTime}</td>
                          <th>${dashboard.countNum}</th>
                          <td class="td-actions text-right">
                            <button type="button" rel="tooltip" class="btn btn-info">
                              <i class="material-icons"><a href="/recommendedContent/${dashboard.dashboard_Id}">favorite</a></i>
                            </button>
                            <button type="button" rel="tooltip" class="btn btn-success">
                              <i class="material-icons"><a href="/updateDashBoard/${dashboard.dashboard_Id}/${dashboard.userId}">edit</a></i>
                            </button>
                            <button type="button" rel="tooltip" class="btn btn-danger">
                              <i class="material-icons"><a href="/deleteDashBoard/${dashboard.dashboard_Id}/${dashboard.userId}">close</a></i>
                            </button>
                          </td>
                        </tr>
                        </c:forEach>
                      </tbody>
		                  <a href="/createDashboard" class="btn btn-primary pull-right" role="button">Query</a>
                    </table>
                  </div>
                </div>
                <!-- end content-->
              </div>
              <!--  end card  -->
            </div>
            <!-- end col-md-12 -->
          </div>
          <!-- end row -->
        </div>
      </div>
<%@ include file="./includes/footer.jsp" %>
</html>
