<%--
  Created by IntelliJ IDEA.
  User: yangyubo
  Date: 15/5/2
  Time: 下午6:32
--%>

<%-- defaultCodec="none" 设置去除默认html转换 --%>
<%@ page contentType="text/html;charset=UTF-8" defaultCodec="none" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>联社新闻 - ${notice.title}</title>
    %{--<asset:stylesheet src="index.css"/>--}%
</head>

<body>
    <g:render template="/layouts/menu" />
    <div id="zzls-news">
        <h1>${notice.title}</h1>
        <h5>发布时间：<g:formatDate format="yyyy-MM-dd HH:mm:ss" date="${notice.dateCreated}"/></h5>
        <div>${notice.content}</div>
    </div>
</body>
</html>