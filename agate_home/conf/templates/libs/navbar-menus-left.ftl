<#macro leftmenus>
  <li id="homeMenu" class="nav-item">
    <a href="${config.portalUrl}" class="nav-link"><@message "home"/></a>
  </li>
  <li id="dataAccessMenu" class="nav-item">
    <a href="${config.portalUrl}/data-accesses" class="btn btn-warning"><@message "data-access"/> <i class="fas fa-arrow-circle-right"></i></a>
  </li>
  <#include "../models/navbar-menus-left.ftl"/>
</#macro>
