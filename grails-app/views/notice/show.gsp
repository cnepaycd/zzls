
<%@ page import="com.zzls.cms.Notice" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'notice.label', default: 'Notice')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-notice" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/index/admin')}"><g:message code="default.admin.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-notice" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list notice">
			
				<g:if test="${noticeInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="notice.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${noticeInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${noticeInstance?.content}">
				<li class="fieldcontain">
					<span id="content-label" class="property-label"><g:message code="notice.content.label" default="Content" /></span>
					
						<span class="property-value" aria-labelledby="content-label"><g:fieldValue bean="${noticeInstance}" field="content"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${noticeInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="notice.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label">
							<g:message code="notice.category.${noticeInstance.category}" />
							%{--<g:fieldValue bean="${noticeInstance}" field="category"/>--}%
						</span>
					
				</li>
				</g:if>
			
				<g:if test="${noticeInstance?.sortIndex}">
				<li class="fieldcontain">
					<span id="sortIndex-label" class="property-label"><g:message code="notice.sortIndex.label" default="Sort Index" /></span>
					
						<span class="property-value" aria-labelledby="sortIndex-label"><g:fieldValue bean="${noticeInstance}" field="sortIndex"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${noticeInstance?.picture}">
				<li class="fieldcontain">
					<span id="picture-label" class="property-label"><g:message code="notice.picture.label" default="Picture" /></span>
					
						<span class="property-value" aria-labelledby="picture-label"><g:fieldValue bean="${noticeInstance}" field="picture"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${noticeInstance?.publisher}">
				<li class="fieldcontain">
					<span id="publisher-label" class="property-label"><g:message code="notice.publisher.label" default="Publisher" /></span>
					
						<span class="property-value" aria-labelledby="publisher-label"><g:fieldValue bean="${noticeInstance}" field="publisher"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${noticeInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="notice.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${noticeInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${noticeInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="notice.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${noticeInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:noticeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${noticeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
