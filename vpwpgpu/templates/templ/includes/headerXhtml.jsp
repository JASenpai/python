<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <meta name="robots" content="index, follow">
    <meta name="description" content="Plantilla para portales de videos">
    <meta name="keywords" content="HTML,CSS,Movile">
    <meta name="author" content="Movile">

	<link rel="shortcut icon" href="${resourcesPath}/img/favicon.jpg" type="image/x-icon">
	<title>Ricardo Quevedo | Claro</title>

	<link href="${sharedResourcesPath}/css/bootstrap-3.3.7.min.css" rel="stylesheet">
	<link href="${sharedResourcesPath}/css/font-awesome-4.7.0.min.css" rel="stylesheet">
	<link href="${sharedResourcesPath}/css/bootstrap.offcanvas-2.5.2.min.css" rel="stylesheet">
	<link href="${sharedResourcesPath}/css/bootstrap.offcanvas-fix-dropdown.min.css" rel="stylesheet">
	<link href="${resourcesPath}/css/app.css" rel="stylesheet">

	<meta property="og:title" content="Ricardo Quevedo" />
	<meta property="og:description" content="Más conocido como &quot;Cejas Pobladas&quot;. Me alegra hacerlos reír." />
	<meta property="og:image" content="${currentHost}${resourcesPath}/img/fb.jpg" />

</head>
<body>

  <c:if test="${hideMenu ne 'true'}">
    <div id="wrapper" class="fade-in">
      <%@include file="menuXhtml.jsp"%>
  </c:if>

  <c:url var="whatsappShare" value="whatsapp://send">
    <c:param name="text" value="http://mvl.im/ricardoQuevedo/compartir?resourceId=" />
  </c:url>

  <c:url var="facebookShare" value="https://www.facebook.com/sharer/sharer.php">
    <c:param name="u" value="http://mvl.im/ricardoQuevedo/compartir?resourceId=" />
  </c:url>
