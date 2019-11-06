<%@include file="../includes/taglibs.jsp"%>
<%@include file="../includes/headerXhtml.jsp"%>

<div class="backtwo"></div>
<section class="container move">

  <header class="cabezote">
    <h1> Escr&iacute;benos</h1>
    <h3></h3>
  </header>

  <!-- Begin branding -->
  <c:if test="${not empty isError and isError == true}">
    <div>
      <p style="color: red; text-align: center;">&#x00a1;CUIDADO!
        <br />
        Lo sentimos, algo sali&oacute; mal, intenta de nuevo por favor.
      </p>
    </div>
  </c:if>
  <c:if test="${not empty isError and isError == false}">
    <div>
      <p style="color: green; text-align: center;">&#x00a1;MENSAJE ENVIADO CORRECTAMENTE!</p>
    </div>
  </c:if>

  <div class="row">
    <div class="col-xs-12 terminos">      
        <form name="contactForm" id="contactForm" action="${p:absoluteURL(mainNode.url)}/enviarCorreo/" method="post">
         <label>Tus nombres y apellidos:</label>
            <input type="text" name="name" id="name" class="span3">
            <label>Tu e-mail:</label>
            <input type="email" name="email" id="email" class="span3">
            <label>Tel&eacute;fono</label>
            <input type="text" name="phone" id="phone" class="span3">
            <label>Mensaje:</label>
            <input type="text" name="msg" id="msg" class="span3 mensaje">
            <br>
            <input type="submit" value="Enviar" class="btn btn-primary">
            <div class=""></div>
        </form>
    </div>
  </div>

</section>
<%@include file="../includes/footerXhtml.jsp"%>
