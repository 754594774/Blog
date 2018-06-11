<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Title</title>
    <%@include file="../common/include.jsp" %>
    <script type="text/javascript" src="${rc.contextPath}/js/admin/index.js"></script>
    <style>
        html body{margin-top: 0px;background-color: #eeeeee;}

    </style>
</head>
<body class="layui-layout-body">
<input type="hidden" id="username" name="username" value="${username}">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">
            <i class="layui-icon">&#xe609;</i> Fly Blog
        </div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item">
                <a href="">控制台<span class="layui-badge-dot layui-bg-orange"></span></a>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    ${username}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;">基本资料</a></dd>
                    <dd><a href="javascript:;">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="admin/logout">退出</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="left-menu">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">文章管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:jump('admin/toCategoryList',0);">文章分类</a></dd>
                        <dd><a href="javascript:jump('admin/toArticleList',0);">文章列表</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="javascript:jump('admin/toLinkList',0);">友链管理</a></li>
                <li class="layui-nav-item"><a href="javascript:jump('admin/toLetterList',0);">站长信箱</a></li>
                <li class="layui-nav-item"><a href="javascript:jump('admin/toNoticeList',0);">公告管理</a></li>

            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;height: 100%; ">
            <IFRAME src="" height="100%" width="100%" frameBorder=0 scrolling="auto" id="mainFrame" name="mainFrame"></IFRAME>
        </div>
    </div>

    <div class="layui-footer" style="background-color: #c2c2c2">
        <!-- 底部固定区域 -->
        <a href="" target="_blank">© linn.com - lnn</a>
    </div>
</div>
<input type="hidden" id="webApp" value="${rc.contextPath}"/>
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_30088308'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "w.cnzz.com/c.php%3Fid%3D30088308' type='text/javascript'%3E%3C/script%3E"));</script>
</body>
</html>
