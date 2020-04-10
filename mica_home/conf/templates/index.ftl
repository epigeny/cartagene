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

        <div class="callout callout-info">
          <div class="row">
            <div class="col-sm-8">
              <p class="text-justify">
                <@message "data-access-process-portal-callout"/>
              </p>
            </div><!-- /.col -->
            <div class="col-sm-4">
              <div class="text-right">
                <button type="button"  onclick="location.href='data-accesses';" class="btn btn-warning btn-lg">
                  <@message "data-access"/> <i class="fas fa-arrow-circle-right"></i>
                </button>
              </div>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div>

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
                  <img src="/assets/images/icon1.png" height="170" alt="<@message "access-request"/>" class="rounded mx-auto d-block">
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
                <a href="page/data-catalogs">
                  <img src="/assets/images/icon2.png" height="170" alt="<@message "data-catalogs"/>" class="rounded mx-auto d-block">
                </a>
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
                <a href="page/documents-newsletters">
                  <img src="/assets/images/icon3b.png" height="170" alt="<@message "documents-newsletters"/>" class="rounded mx-auto d-block">
                </a>
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
                <a href="page/projects-publications">
                  <img src="/assets/images/icon4.png" height="170" alt="<@message "projects-publications"/>" class="rounded mx-auto d-block">
                </a>
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
