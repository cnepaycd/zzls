<%@ page import="com.zzls.cms.Notice" defaultCodec="none"%>

<div class="fieldcontain ${hasErrors(bean: noticeInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="notice.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${noticeInstance?.title}" style="width: 70%"/>

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
	<span style="color: #999; font-size: small">（数字越小排序越前）</span>
</div>

<div class="fieldcontain ${hasErrors(bean: noticeInstance, field: 'picture', 'error')}">
	<label for="picture">
		<g:message code="notice.picture.label" default="Picture" />
		%{--<span class="required-indicator">*</span>--}%
	</label>
	<g:textField name="picture" value="${noticeInstance?.picture}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: noticeInstance, field: 'content', 'error')} required">
	<label for="content" style="padding-bottom: 20px">
		<g:message code="notice.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	%{--<g:textField name="content" required="" value="${noticeInstance?.content}"/>--}%

	<script id="content" name="content" type="text/plain">
		${noticeInstance?.content}
	</script>
</div>

<!-- UEditor -->
<script type="text/javascript" src="${assetPath(src: 'ueditor.config.js')}"></script>
<script type="text/javascript" src="${assetPath(src: 'ueditor.all.js')}"></script>

<script type="text/javascript">
	var ue = UE.getEditor('content', {
		toolbars: [
			['undo', 'redo', '|', 'link', 'simpleupload', 'insertvideo','attachment']
		],
		pasteplain: true,
		enableContextMenu: false,
		elementPathEnabled: false,
		scaleEnabled: true,
		initialFrameWidth: '100%',
		initialFrameHeight: 500,
		saveInterval: 3000
	});
</script>