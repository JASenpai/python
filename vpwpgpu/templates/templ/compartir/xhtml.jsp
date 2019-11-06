<%@include file="../includes/taglibs.jsp"%>
<c:set var="hideMenu" value="true" />
<%@include file="../includes/headerXhtml.jsp"%>

<div class="menulogo">
  <a href="#"> <img src="${resourcesPath}/img/logo.png" class="icologo"></a>
</div>
<div class="titulo">
  <a href="${nodeAbsoulteUrl}/index/"><img src="${resourcesPath}/img/titulo.jpg"></a>
</div>

<section class="container sinbackground">
  <div class="form-group  span3">
    <h6>Ricardo Quevedo</h6>
    <p>Podr&aacute;s re&iacute;r hasta el cansancio.</p>
  </div>
  <div class="row">
    <div class="col-xs-12 col-lg-4">
      <div class="video">
        <c:choose>
          <c:when test="${currentResource.type eq 'PUBLISHINGVIDEO'}">
            <div class="nameVideo">${resource.name}</div>
            <video width="100%" preload="none" controls autoplay controlsList="nodownload" data-resource-id="${currentResource.id}"
              src="${currentResource.downloadUrl}" poster="${currentResource.previews[node.properties.previewResolution.simpleValue]}"></video>
          </c:when>
          <c:when test="${currentResource.type eq 'WALLPAPER'}">
            <!-- IMAGEN -->
            <div>
              <img src="${vpf:getDownloadImageUrl(currentResource.downloadUrl, 'HIGH')}">
            </div>
            <div class="nameVideo">${currentResource.name}</div>
          </c:when>
          <c:otherwise>
            <div>
              <img class="image-resource" src="${vpf:getDownloadImageUrl(currentResource.downloadUrl, 'HIGH')}">
            </div>
          </c:otherwise>
        </c:choose>

        <div class="functions unico" style="text-align: center; margin-bottom: 20px;">
          <h3 class="nameVideo">&#x00bf;Te gust&oacute; el v&iacute;deo?</h3>
          <a class="btn-primary" href="${p:absoluteURL(mainNode.url)}/ricardoQuevedo/">Ver m&aacute;s en la pagina</a>
        </div>
      </div>
    </div>
  </div>

  <blockquote>
    <h3 class="nameVideo">T&eacute;rminos y Condiciones</h3>
    Ricardo Quevedo, servicio exclusivo para usuarios Claro con valor de $2.000 Iva Incluido m&aacute;s Impoconsumo si aplica. En el periodo que tu suscripci&oacute;n se encuentre activa, cada d&iacute;a recibir&aacute;s un SMS con un link para que visites esta p&aacute;gina y puedas ver el contenido audiovisual del d&iacute;a, sigue los siguientes pasos:
  </blockquote>

  <div class="call">
    <a href="#"> <img src="${resourcesPath}/img/calltoaction.png"></a>
  </div>
  <br>
</section>

<%@include file="../includes/footerXhtml.jsp"%>
