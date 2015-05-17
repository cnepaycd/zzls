<%@ page import="com.zzls.cms.OpAdmin" %>



<div class="fieldcontain ${hasErrors(bean: opAdminInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="opAdmin.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" maxlength="20" required="" value="${opAdminInstance?.userName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: opAdminInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="opAdmin.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${opAdminInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: opAdminInstance, field: 'realName', 'error')} required">
	<label for="realName">
		<g:message code="opAdmin.realName.label" default="Real Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="realName" maxlength="10" required="" value="${opAdminInstance?.realName}"/>

</div>

