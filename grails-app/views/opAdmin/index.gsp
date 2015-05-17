
<%@ page import="com.zzls.cms.OpAdmin" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'opAdmin.label', default: 'OpAdmin')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-opAdmin" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/index/admin')}"><g:message code="default.admin.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-opAdmin" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="userName" title="${message(code: 'opAdmin.userName.label', default: 'User Name')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'opAdmin.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="realName" title="${message(code: 'opAdmin.realName.label', default: 'Real Name')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'opAdmin.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'opAdmin.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${opAdminInstanceList}" status="i" var="opAdminInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${opAdminInstance.id}">${fieldValue(bean: opAdminInstance, field: "userName")}</g:link></td>
					
						<td>${fieldValue(bean: opAdminInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: opAdminInstance, field: "realName")}</td>
					
						<td><g:formatDate date="${opAdminInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${opAdminInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${opAdminInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
