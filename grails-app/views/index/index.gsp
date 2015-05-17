<%--
  Created by IntelliJ IDEA.
  User: yangyubo
  Date: 15/4/30
  Time: 下午4:16
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>欢迎来到郑州市市郊农村信用合作联社！</title>
    %{--<asset:stylesheet src="index.css"/>--}%
</head>

<body>
    <g:render template="/layouts/menu" />

    <div id="zzls-banner"><asset:image src="banner.png"/></div>

    <div id="zzls-functions">
        <!-- 个人网银大众版 -->
        <div class="function-block" style="margin-left: 0">
            <div class="function-back">
                <div class="function-title"><asset:image src="icon-1.png" /></div>
                <div class="function-button">
                    <ul>
                        <li><a href="#">注 册</a></li>
                        <li><a href="#">登 录</a></li>
                    </ul>
                </div>
                <div class="function-link">
                    <ul>
                        <li><a href="#">功能介绍</a></li>
                        <li><a href="#">操作手册</a></li>
                        <li><a href="#">动态演示</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- 个人网银专业版 -->
        <div class="function-block">
            <div class="function-back">
                <div class="function-title"><asset:image src="icon-2.png" /></div>
                <div class="function-button">
                    <ul class="one">
                        <li class="one"><a href="#">登 录</a></li>
                    </ul>
                </div>
                <div class="function-link">
                    <ul>
                        <li><a href="#">功能介绍</a></li>
                        <li><a href="#">操作手册</a></li>
                        <li><a href="#">动态演示</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- 企业网银专业版 -->
        <div class="function-block">
            <div class="function-back">
                <div class="function-title"><asset:image src="icon-3.png" /></div>
                <div class="function-button">
                    <ul class="one">
                        <li><a href="#">登 录</a></li>
                    </ul>
                </div>
                <div class="function-link">
                    <ul>
                        <li><a href="#">功能介绍</a></li>
                        <li><a href="#">操作手册</a></li>
                        <li><a href="#">动态演示</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- 手机银行 -->
        <div class="function-block">
            <div class="function-back">
                <div class="function-title"><asset:image src="icon-4.png" /></div>
                <div class="function-button">
                    <ul class="one">
                        <li><a href="#">演 示</a></li>
                    </ul>
                </div>
                <div class="function-link">
                    <ul class="two">
                        <li><a href="#">签约开通</a></li>
                        <li><a href="#">客户端下载</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div id="zzls-channels">
        <!-- 最新公告 -->
        <div class="channel-block">
            <div class="channel-title">
                <span>最新公告</span>
                <a href="#">MORE</a>
            </div>
            <g:if test="${gonggaoTop != null}">
                <div class="channel-top">
                    <div class="channel-top-img"><asset:image src="news-demo.png" width="148px" height="112px" /></div>
                    <div class="channel-top-title"><strong>标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题</strong></div>
                    <div class="channel-top-description">摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要</div>
                    <div class="channel-top-detail"><a href="#">查看详情 >></a></div>
                </div>
            </g:if>
            <g:if test="${gonggaoList.size() > 0}">
            <div class="channel-list">
                <ul>
                    <g:each in="${gonggaoList}" status="i" var="gonggao">
                        <li>
                            <span class="notice-title"><g:link controller="index" action="news" id="${gonggao.id}">${gonggao.title}</g:link></span>
                            <span class="notice-date"><g:formatDate format="yyyy-MM-dd" date="${gonggao.dateCreated}" /></span>
                        </li>
                    </g:each>
                    %{--<li>--}%
                        %{--<span class="notice-title"><a href="#">标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题题标题标题标题标</a></span>--}%
                        %{--<span class="notice-date">2015-05-01</span>--}%
                    %{--</li>--}%
                    %{--<li>--}%
                        %{--<span class="notice-title"><a href="#">标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题题标题标题标题标</a></span>--}%
                        %{--<span class="notice-date">2015-05-01</span>--}%
                    %{--</li>--}%
                    %{--<li>--}%
                        %{--<span class="notice-title"><a href="#">标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题题标题标题标题标</a></span>--}%
                        %{--<span class="notice-date">2015-05-01</span>--}%
                    %{--</li>--}%
                </ul>
            </div>
            </g:if>
        </div>
        <!-- 农商动态 -->
        <div class="channel-block" style="margin-left: 10px">
            <div class="channel-title">
                <span>农商动态</span>
                <a href="#">MORE</a>
            </div>
            <div class="channel-top">
                <div class="channel-top-img"><asset:image src="news-demo.png" width="148px" height="112px" /></div>
                <div class="channel-top-title"><strong>标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题</strong></div>
                <div class="channel-top-description">摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要</div>
                <div class="channel-top-detail"><a href="#">查看详情 >></a></div>
            </div>
            <div class="channel-list">
                <ul>
                    <li>
                        <span class="notice-title"><a href="#">标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题题标题标题标题标</a></span>
                        <span class="notice-date">2015-05-01</span>
                    </li>
                    <li>
                        <span class="notice-title"><a href="#">标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题题标题标题标题标</a></span>
                        <span class="notice-date">2015-05-01</span>
                    </li>
                    <li>
                        <span class="notice-title"><a href="#">标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题题标题标题标题标</a></span>
                        <span class="notice-date">2015-05-01</span>
                    </li>
                    <li>
                        <span class="notice-title"><a href="#">标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题题标题标题标题标</a></span>
                        <span class="notice-date">2015-05-01</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>