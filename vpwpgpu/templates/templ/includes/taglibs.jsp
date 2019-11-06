<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/portal.tld" prefix="p" %>
<%@ taglib uri="/WEB-INF/video-player-functions.tld" prefix="vpf" %>

<c:set var="rootNodeProperties" value="${p:tree('root').properties}" />
<c:set var="resourcesPath" value="${p:absoluteURL(node.properties.resourcesPath)}" />
<c:set var="sharedResourcesPath" value="${p:absoluteURL(rootNodeProperties.sharedResourcesPath)}" />
<c:set var="contextPath" value="${pageContext.request.contextPath}/" />
<c:set var="nodeAbsoulteUrl" value="${p:absoluteURL(mainNode.key)}" />
<c:set var="currentHost" scope="request">
    <c:out value="${pageContext.request.scheme}://${pageContext.request.serverName}"/><c:if test="${pageContext.request.serverPort != 80}"><c:out value=":${pageContext.request.serverPort}"/></c:if>
</c:set>
