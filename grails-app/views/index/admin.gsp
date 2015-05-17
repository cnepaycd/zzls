<%--
  Created by IntelliJ IDEA.
  User: yangyubo
  Date: 15/5/2
  Time: 下午7:06
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>联社官网后台</title>
    %{--<asset:stylesheet src="index.css"/>--}%
</head>

<body>
    <g:render template="/layouts/menu" />

    <div id="zzls-admin">
        <h1>联社官网后台</h1>
        <ul>
            <li><g:link controller="opAdmin">管理员</g:link></li>
            <li><g:link controller="notice">新闻管理</g:link></li>
            <li><g:link uri="/index">前往官网首页 >></g:link></li>
        </ul>
    </div>
</body>
</html>