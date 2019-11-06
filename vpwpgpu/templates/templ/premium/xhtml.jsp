<%@include file="../includes/taglibs.jsp"%>
<%@include file="../includes/headerXhtml.jsp"%>

<div class="backtwo"></div>

<section class="container move">

  <header class="cabezote">
    <h1>
      BIENVENIDOS A <strong> Ricardo Quevedo Premium</strong>
    </h1>
  </header>
  <div class="col-xs-12 col-lg-12 parrafo">
    <strong>Con Ricardo Quevedo PREMIUM podr&aacute;s obtener acceder a clips y memes exclusivos del famoso comediante Ricardo Quevedo.</strong>
  </div>

  <a href="${nodeAbsoulteUrl}/login/" class="btn btn-primary"> Quiero ser Premium </a>

  <div class="row">
    <div class="col-xs-12 col-lg-4 videoUnico">
      <c:choose>
        <c:when test="${not empty currentCategoryResources}">
          <c:forEach items="${currentCategoryResources}" var="resource" varStatus="loop">
            <div class="video">
              <c:choose>
                <c:when test="${resource.type eq 'PUBLISHINGVIDEO'}">                  
                  <!-- VIDEO -->                  
                  <video width="100%" preload="none" controls controlsList="nodownload" data-resource-id="${resource.id}" src="${resource.downloadUrl}"
                    poster="${resource.previews[node.properties.previewResolution.simpleValue]}"></video>
                    
                  <!-- Share -->
                  <div class="functions sharingtree">
                    <ul>
                      <a id="whatsappShare" href="${whatsappShare}" target="_blank" onclick="getLocalSharedUrl(this,${resource.id})">
                        <li><i class="fa fa-whatsapp" aria-hidden="true"></i> </li>
                      </a>
                      <a id="facebookShare" href="${facebookShare}" target="_blank" onclick="getLocalSharedUrl(this,${resource.id})">
                        <li class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i> </li>
                      </a>
                      <a  onclick="saveFavorite(this, ${msisdn}, ${resource.id});">
                        <li><i class="fa ${favorites.contains(resource.id) ? 'fa fa-heart' : 'fa fa-heart-o'}" aria-hidden="true"></i></li>
                      </a>                
                    </ul> 
                  </div>
                  
                </c:when>
                <c:when test="${resource.type eq 'WALLPAPER'}">
                  <!-- IMAGEN -->
                  <div>
                    <img src="${vpf:getDownloadImageUrl(currentResource.downloadUrl, 'HIGH')}">
                  </div>
                </c:when>
                <c:otherwise>
                  <!-- AUDIO -->
                  <div class="progress-radial progress">
                    <div class="overlay">
                      <img class="img-responsive img-circle" src="${resourcesPath}/img/preview-4.png" alt="">
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <div class="controls">
                    <div class="nameAudio">${resource.name}</div>
                    <div class="centercontrols">
                      <span class="glyphicon glyphicon-volume-up" id="mute${loop.index}" data-toggle="audioplayer" data-icon="muted" data-active="false"></span>
                      <span class="glyphicon glyphicon-volume-off hide" id="muted${loop.index}" data-toggle="audioplayer" data-icon="mute" data-active="false"></span>
                      <span class="glyphicon glyphicon-stop hide" id="stop${loop.index}" data-toggle="audioplayer" data-icon="play"></span> <span
                        class="glyphicon glyphicon-play active" id="play${loop.index}" data-toggle="audioplayer" data-icon="stop" src="${resource.downloadUrl}"></span>
                      <span class="glyphicon glyphicon-pause" id="pause${loop.index}" data-toggle="audioplayer" data-icon="pause"></span>
                    </div>
                  </div>
                </c:otherwise>
              </c:choose>              
            </div>
          </c:forEach>
        </c:when>
        <c:otherwise>
          <div style="padding-top: 30px">
            <p>No hemos encontrado videos en este momento, por favor intenta de nuevo m&aacute;s tarde</p>
          </div>
        </c:otherwise>
      </c:choose>
    </div>
    
    <div class="col-xs-12 col-lg-4"> 
      <a href="${nodeAbsoulteUrl}/clips/"><div class="bienvenida-1"> <span><strong>Clips</strong> Los mejores videos con nuevos sketches y nuevos personajes.</span></div></a>
    </div>

    <div class="col-xs-12 col-lg-4"> 
      <a href="${nodeAbsoulteUrl}/grafica/"><div class="bienvenida-2"> <span><strong>Memes</strong> Memes exclusivos del famoso comediante Ricardo Quevedo con los que pondr&aacute;s re&iacute;r hasta el cansancio</span></div></a>
    </div>
    
  </div>
  <a href="${nodeAbsoulteUrl}/login/" class="btn btn-primary">Quiero ser Premium</a>
</section>
<%@include file="../includes/footerXhtml.jsp"%>
