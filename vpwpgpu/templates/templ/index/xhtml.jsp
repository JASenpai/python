<%@include file="../includes/taglibs.jsp"%>
<%@include file="../includes/headerXhtml.jsp"%>

<div class="backtwo"></div>

<section class="container move">

  <header class="cabezote">
    <h1>Ricardo Quevedo Contenido gratis</h1>
    <h3> No estoy de mal genio, son las cejas. Iba a ser mejor que Messi pero me lesion&eacute;. La vida est&aacute; llena de cosas bonitas que le pasan a los demas. @cejaspobladas.</h3>
  </header>

  <div class="row">

    <c:choose>
      <c:when test="${not empty currentCategoryResources}">

        <!-- VIDEOS -->
        <c:forEach items="${currentCategoryResources}" var="resource" varStatus="loop">
        <div class="col-xs-12 col-lg-4">
            <div class="video">
          <c:choose>
            <c:when test="${resource.type eq 'PUBLISHINGVIDEO'}">
               <!-- VIDEO -->
                  <video width="100%" preload="none" controls controlsList="nodownload" data-resource-id="${resource.id}" src="${resource.downloadUrl}"
                    poster="${resource.previews[node.properties.previewResolution.simpleValue]}"></video>
                  <div class="nameVideo">
                    <strong>${resource.name} </strong> ${resource.description}</div>
               
            </c:when>
            
          </c:choose>

  <!-- Share -->
              <div class="functions sharingtwo">
               <ul>
                  <a id="whatsappShare" href="${whatsappShare}" target="_blank" onclick="getLocalSharedUrl(this,${resource.id})">
                    <li><i class="fa fa-whatsapp" aria-hidden="true"></i></li>
                  </a>
                  <a id="facebookShare" href="${facebookShare}" target="_blank" onclick="getLocalSharedUrl(this,${resource.id})">
                    <li class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></li>
                  </a>
                </ul>    
             </div>  

  </div>
          </div>

        </c:forEach>

      </c:when>
      <c:otherwise>
        <div style="padding-top: 30px">
          <p>Oops!, Ocurrio un error, por favor intenta de nuevo m&aacute;s tarde</p>
        </div>
      </c:otherwise>
    </c:choose>

  </div>
</section>
<br>
<br>
<%@include file="../includes/footerXhtml.jsp"%>
