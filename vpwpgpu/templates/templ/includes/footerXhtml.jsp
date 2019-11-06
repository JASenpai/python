<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<footer class="footer">
  <div class="container text-center">
    <p class="text-muted">Wavy &copy; 2019</p>
  </div>
</footer>

<div id="shareSocialModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Comparte este video en</h4>
      </div>
      <div class="modal-body text-center">      
        <a id="whatsappShare" href="${whatsappShare}" target="_blank" onclick="getLocalSharedUrl(this,${resource.id})">
          <i class="fa fa-whatsapp" aria-hidden="true"></i>
        </a>
        <a id="facebookShare" href="${facebookShare}" target="_blank" onclick="getLocalSharedUrl(this,${resource.id})">
          <i class="fa fa-facebook" aria-hidden="true"></i>
        </a>
      </div>
      <div class="modal-footer">
        <div class="text-center">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
    </div>
  </div>
</div>

<div id="favoritesModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">&#x00a1;Agregado a tus favoritos!</h4>
      </div>
      <div class="modal-body text-center">
        <p>Ahora podr&aacute;s ver este video en la secci&oacute;n Mis Favoritos</p>
      </div>
      <div class="modal-footer">
        <div class="text-center">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
    </div>
  </div>
</div>


<script src="${sharedResourcesPath}/js/jquery-1.11.1.min.js"></script>
<script src="${sharedResourcesPath}/js/bootstrap-3.3.7.min.js"></script>
<script src="${sharedResourcesPath}/js/bootstrap.offcanvas-2.5.2.min.js"></script>
<script src="${sharedResourcesPath}/js/bootstrap-rating-1.4.0.min.js"></script>
<script src="${sharedResourcesPath}/js/app.min.js"></script>

<script>
    var googleAnalyticsId = '${node.properties.googleAnalyticsId}';
    var userId = '${(not empty msisdn) ? msisdn : pageContext.session.id}';
    var contextPath = '${contextPath}';
    var currentNodeKey = '${mainNode.key}';
</script>

<script>
$('.carousel[data-type="multi"] .item').each(function() {
    var next = $(this).next();
    if (!next.length) {
      next = $(this).siblings(':first');
    }
    next.children(':first-child').clone().appendTo($(this));
     for (var i = 0; i < 2; i++) {
      next = next.next();
      if (!next.length) {
        next = $(this).siblings(':first');
      }
       next.children(':first-child').clone().appendTo($(this));
    }
  });
</script>

</body>
</html>
