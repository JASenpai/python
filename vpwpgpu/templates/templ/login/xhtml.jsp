<%@include file="../includes/taglibs.jsp"%>
<c:set var="hideMenu" value="true" />
<%@include file="../includes/headerXhtml.jsp"%>

<div class="menulogo">
  <a href="#"> <img src="${resourcesPath}/img/logo.png" class="icologo"></a>
</div>
<div class="titulo">
  <a href="#"> <img src="${resourcesPath}/img/titulo.jpg"></a>
</div>

<section class="container sinbackground">

  <form action="${p:absoluteURL(mainNode.url)}/clips/" method="post" id="login-form" autocomplete="off">
    <div class="form-group  span3">
      <h6> mainTitulo </h6>
      <h5> subTitulo <br/><br/>
      </h5>
      <h3 class="nameVideo">Ingresa tu l&iacute;nea:</h3>
      <input type="number" name="msisdn" id="msisdn" maxlength="10" autofocus="autofocus" required="required" placeholder="" /> <input type="submit"
        id="btn-login" class="btn btn-primary" value="VALIDAR"> <input type="hidden" name="redirectUrl" id="redirectUrl" value="${param.redirectUrl}">
    </div>

  </form>
  <c:if test="${param.error}">
    <div class="error">
      &#x00a1;CUIDADO! <br /> Lo sentimos, algo sali&oacute; mal, intenta de nuevo por favor.
    </div>
  </c:if>

</section>
<br>
<br>
<%@include file="../includes/footerXhtml.jsp"%>
