
<%@ page import="com.zzls.cms.Notice" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'notice.label', default: 'Notice')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-notice" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/index/admin')}"><g:message code="default.admin.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-notice" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'notice.title.label', default: 'Title')}" />
					
						%{--<g:sortableColumn property="content" title="${message(code: 'notice.content.label', default: 'Content')}" />--}%
					
						<g:sortableColumn property="category" title="${message(code: 'notice.category.label', default: 'Category')}" />
					
						<g:sortableColumn property="sortIndex" title="${message(code: 'notice.sortIndex.label', default: 'Sort Index')}" />
					
						%{--<g:sortableColumn property="picture" title="${message(code: 'notice.picture.label', default: 'Picture')}" />--}%
					
						<g:sortableColumn property="publisher" title="${message(code: 'notice.publisher.label', default: 'Publisher')}" />

						<g:sortableColumn property="dateCreated" title="${message(code: 'notice.dateCreated.label', default: 'Date Created')}" />

						<g:sortableColumn property="lastUpdated" title="${message(code: 'notice.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${noticeInstanceList}" status="i" var="noticeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${noticeInstance.id}">${fieldValue(bean: noticeInstance, field: "title")}</g:link></td>
					
						%{--<td>${fieldValue(bean: noticeInstance, field: "content")}</td>--}%
					
						<td>
							<g:message code="notice.category.${noticeInstance.category}" />
							%{--${fieldValue(bean: noticeInstance, field: "category")}--}%
						</td>
					
						<td>${fieldValue(bean: noticeInstance, field: "sortIndex")}</td>
					
						%{--<td>${fieldValue(bean: noticeInstance, field: "picture")}</td>--}%
					
						<td>${fieldValue(bean: noticeInstance, field: "publisher")}</td>

						<td><g:formatDate date="${noticeInstance.dateCreated}" /></td>

						<td><g:formatDate date="${noticeInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${noticeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
