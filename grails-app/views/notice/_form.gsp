<%@ page import="com.zzls.cms.Notice" %>



<div class="fieldcontain ${hasErrors(bean: noticeInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="notice.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${noticeInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: noticeInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="notice.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="content" required="" value="${noticeInstance?.content}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: noticeInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="notice.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="category" from="${noticeInstance.constraints.category.inList}" required="" value="${noticeInstance?.category}" valueMessagePrefix="notice.category"/>

</div>

<div class="fieldcontain ${hasErrors(bean: noticeInstance, field: 'sortIndex', 'error')}">
	<label for="sortIndex">
		<g:message code="notice.sortIndex.label" default="Sort Index" />
		%{--<span class="required-indicator">*</span>--}%
	</label>
	<g:field name="sortIndex" type="number" value="${noticeInstance.sortIndex}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: noticeInstance, field: 'picture', 'error')}">
	<label for="picture">
		<g:message code="notice.picture.label" default="Picture" />
		%{--<span class="required-indicator">*</span>--}%
	</label>
	<g:textField name="picture" value="${noticeInstance?.picture}"/>

</div>

%{--<div class="fieldcontain ${hasErrors(bean: noticeInstance, field: 'publisher', 'error')} required">--}%
	%{--<label for="publisher">--}%
		%{--<g:message code="notice.publisher.label" default="Publisher" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:textField name="publisher" required="" value="${noticeInstance?.publisher}"/>--}%

%{--</div>--}%

