<%--
  Created by IntelliJ IDEA.
  User: yangyubo
  Date: 15/5/28
  Time: 下午11:54
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>ueditor demo</title>
</head>

<body>
<!-- 加载编辑器的容器 -->
<script id="container" name="content" type="text/plain">
        这里写你的初始化内容
    </script>
<!-- 配置文件 -->
<script type="text/javascript" src="${assetPath(src: 'ueditor.config.js')}"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="${assetPath(src: 'ueditor.all.js')}"></script>
<!-- 实例化编辑器 -->
<script type="text/javascript">
    var ue = UE.getEditor('container');
</script>
</body>
</html>
