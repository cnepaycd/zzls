<%--
  Created by IntelliJ IDEA.
  User: yangyubo
  Date: 15/5/2
  Time: 下午7:04
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main" />
    <title>登录</title>
</head>

<body>
    <div class="body">
        <h1>请登录后台</h1>
        <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
        </g:if>

        <g:form action="authenticate" method="post" >
            <div class="dialog">
                <table>
                    <tbody>
                    <tr class="prop">
                        <td valign="top" class="name"><label for="login">管理员ID：</label></td>
                        <td valign="top"><input type="text" id="login" name="login"/></td>
                    </tr>
                    <tr class="prop">
                        <td valign="top" class="name"><label for="password">登录密码：</label></td>
                        <td valign="top"><input type="password" id="password" name="password"/></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <span class="button">
                    <input type="submit" value="进入后台系统" />
                </span>
            </div>
        </g:form>
    </div>
</body>
</html>