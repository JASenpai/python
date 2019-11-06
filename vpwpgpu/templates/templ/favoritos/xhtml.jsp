<%@include file="../includes/taglibs.jsp"%>
<%@include file="../includes/headerXhtml.jsp"%>

<div class="backtwo"></div>
<section class="container move">

  <header class="cabezote">
    <h1> Mis Favoritos</h1>
    <h3>Encontrar&aacute;s los contenidos que m&aacute;s te han gustado y calificaste como favoritos.</h3>
  </header>

  <div class="row">
    <c:choose>
      <c:when test="${not empty favoriteResources}">
        <c:forEach items="${favoriteResources}" var="resource">
          <div class="col-xs-12 col-lg-4">
            <div class="video">
              <c:choose>
                <c:when test="${resource.type eq 'PUBLISHINGVIDEO'}">
                  <!-- VIDEO -->
                  <video width="100%" preload="none" controls controlsList="nodownload" data-resource-id="${resource.id}" src="${resource.downloadUrl}"
                    poster="${resource.previews[node.properties.previewResolution.simpleValue]}">
                  </video>
                  <div class="nameVideo">${resource.name}</div>
                </c:when>
                <c:when test="${resource.type eq 'WALLPAPER'}">
                  <!-- IMAGEN -->
                  <div>
                    <img src="${vpf:getDownloadImageUrl(resource.downloadUrl, 'HIGH')}">
                  </div>
                  <div class="nameVideo">${resource.name}</div>
                </c:when>
              </c:choose>

              <div class="functions sharingtwo">
                <ul>
                  <a id="whatsappShare" href="${whatsappShare}" target="_blank" onclick="getLocalSharedUrl(this,${resource.id})">
                    <li><i class="fa fa-whatsapp" aria-hidden="true"></i> </li>
                  </a>
                  <a id="facebookShare" href="${facebookShare}" target="_blank" onclick="getLocalSharedUrl(this,${resource.id})">
                    <li class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i> </li>
                  </a>
                  <a onclick="saveFavorite(this, ${msisdn}, ${resource.id});">
                    <li><i class="fa ${favorites.contains(resource.id) ? 'fa fa-heart' : 'fa fa-heart-o'}" aria-hidden="true"></i></li>
                  </a>
                </ul>
              </div>

            </div>
          </div>
        </c:forEach>
      </c:when>
      <c:otherwise>
        <div style="padding-top: 30px">
          <p>No hemos encontrado videos en este momento, por favor intenta de nuevo m&aacute;s tarde.</p>
        </div>
      </c:otherwise>
    </c:choose>
  </div>
</section>
</br>
</br>
<%@include file="../includes/footerXhtml.jsp"%>
