<!-- Macros -->
<#include "libs/header.ftl">

<!DOCTYPE html>
<html lang="${.lang}">
<head>
  <title>${config.name!""}</title>
  <#include "libs/head.ftl">
</head>
<body id="index-page" class="hold-transition layout-top-nav layout-navbar-fixed">
<div class="wrapper">

  <!-- Navbar -->
  <#include "libs/top-navbar.ftl">
  <!-- /.navbar -->


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">

    <div class="jumbotron jumbotron-fluid">
      <div class="container">
        <#if config.repositoryEnabled && config.dataAccessEnabled>
          <h1 class="display-4"><@message "data-portal-title"/></h1>
          <p class="lead"><@message "data-portal-text"/></p>
        <#elseif config.repositoryEnabled>
          <h1 class="display-4"><@message "data-repository-portal-title"/></h1>
          <p class="lead"><@message "data-repository-portal-text"/></p>
        <#elseif config.dataAccessEnabled>
          <h1 class="display-4"><@message "data-access-portal-title"/></h1>
          <p class="lead"><@message "data-access-portal-text"/></p>
        </#if>
      </div>
    </div>

    <!-- Main content -->
    <div class="content">
      <div class="container">
        <div class="row">
          <div class="col-sm-6 col-lg-3">
            <div class="card card-primary card-outline">
              <div class="card-header">
                <h5 class="card-title m-0"><@message "access-request"/></h5>
              </div>
              <div class="card-body">
                <p class="card-text text-muted">
		  <@message "access-request-text"/>
                </p>
              </div>
              <div class="card-footer">
                <a href="data-access-process">
                  <img src="https://cartagene.qc.ca/sites/default/files/styles/cartagene_medium/public/images/page/icon%201.png" width="300" height="170" alt="Access Request" typeof="foaf:Image" class="img-responsive">
	        </a>
              </div>
            </div>
          </div>

          <div class="col-sm-6 col-lg-3">
            <div class="card card-primary card-outline">
              <div class="card-header">
                <h5 class="card-title m-0"><@message "data-catalogs"/></h5>
              </div>
              <div class="card-body">
                <p class="card-text text-muted">
                  <@message "data-catalogs-text"/>
                </p>
              </div>
              <div class="card-footer">
                <button type="button"  onclick="location.href='data-access-process';" class="btn btn-info btn-lg">
                  <i class="fas fa-info-circle"></i> <@message "data-access-process"/>
                </button>
              </div>
            </div>
          </div>

          <div class="col-sm-6 col-lg-3">
            <div class="card card-primary card-outline">
              <div class="card-header">
                <h5 class="card-title m-0"><@message "documents-newsletters"/></h5>
              </div>
              <div class="card-body">
                <p class="card-text text-muted">
                  <@message "documents-newsletters-text"/>
                </p>
              </div>
              <div class="card-footer">
                <button type="button"  onclick="location.href='data-access-process';" class="btn btn-info btn-lg">
                  <i class="fas fa-info-circle"></i> <@message "data-access-process"/>
                </button>
              </div>
            </div>
          </div>

          <div class="col-sm-6 col-lg-3">
            <div class="card card-primary card-outline">
              <div class="card-header">
                <h5 class="card-title m-0"><@message "projects-publications"/></h5>
              </div>
              <div class="card-body">
                <p class="card-text text-muted">
                  <@message "projects-publications-text"/>
                </p>
              </div>
              <div class="card-footer">
                <button type="button"  onclick="location.href='data-access-process';" class="btn btn-info btn-lg">
                  <i class="fas fa-info-circle"></i> <@message "data-access-process"/>
                </button>
              </div>
            </div>
          </div>

        </div>

      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <#include "libs/footer.ftl">
</div>
<!-- ./wrapper -->

<#include "libs/scripts.ftl">

<script>
  micajs.stats('studies', {}, function(stats) {
    $('#network-hits').text(new Intl.NumberFormat().format(stats.networkResultDto.totalHits));
    $('#study-hits').text(new Intl.NumberFormat().format(stats.studyResultDto.totalHits));
    $('#dataset-hits').text(new Intl.NumberFormat().format(stats.datasetResultDto.totalHits));
    $('#variable-hits').text(new Intl.NumberFormat().format(stats.variableResultDto.totalHits));
  });
</script>

</body>
</html>
