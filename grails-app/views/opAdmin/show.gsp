
<%@ page import="com.zzls.cms.OpAdmin" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'opAdmin.label', default: 'OpAdmin')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-opAdmin" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/index/admin')}"><g:message code="default.admin.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-opAdmin" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list opAdmin">
			
				<g:if test="${opAdminInstance?.userName}">
				<li class="fieldcontain">
					<span id="userName-label" class="property-label"><g:message code="opAdmin.userName.label" default="User Name" /></span>
					
						<span class="property-value" aria-labelledby="userName-label"><g:fieldValue bean="${opAdminInstance}" field="userName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opAdminInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="opAdmin.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${opAdminInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opAdminInstance?.realName}">
				<li class="fieldcontain">
					<span id="realName-label" class="property-label"><g:message code="opAdmin.realName.label" default="Real Name" /></span>
					
						<span class="property-value" aria-labelledby="realName-label"><g:fieldValue bean="${opAdminInstance}" field="realName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opAdminInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="opAdmin.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${opAdminInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${opAdminInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="opAdmin.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${opAdminInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:opAdminInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${opAdminInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
