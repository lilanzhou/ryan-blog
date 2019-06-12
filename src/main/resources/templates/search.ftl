<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>搜索的文章</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link href="../css/search.css" rel="stylesheet" type="text/css" />
    <!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
    <script type="text/javascript" src="../js/cufon-yui.js"></script>
    <script type="text/javascript" src="../js/arial.js"></script>
    <script type="text/javascript" src="../js/cuf_run.js"></script>
    <!-- CuFon ends -->
</head>
<body>
<div class="main1">

    <div class="content1">
        <div class="content_resize">

            <div class="mainbar">
             <#list search as t>
                <div class="article">
                    <p style="font-size: 24px">${t.article.title}</p>
                    <#--<div class="clr"></div>-->
                    <p><span class="date">${t.article.createTime?string("yyyy-MM-dd")}</span> &nbsp;|&nbsp; Posted by
                        <a href="#">李兰舟</a> &nbsp;|&nbsp; Filed under
                        <if t.tag.name??>
                        <a >${t.tag.name}</a>
                        </if>
                    </p>



                    <img src="../images/img1.jpg" width="263" height="146" alt="image" class="fl" />
                    <p style="display: -webkit-box;-webkit-line-clamp: 6;-webkit-box-orient: vertical;overflow: hidden;test-overflow:ellipsis">
                        ${t.article.content}</p>
                    <p class="spec"><a href="/article/${t.article.id}" class="rm">阅读全文</a> <a href="#" class="com">评论</a></p>
                </div>
            </#list>
            </div>
            <div class="sidebar1">
                <div class="gadget">
                    <h2 class="star"><span>个人</span> 博客</h2><div class="clr"></div>
                    <ul class="sb_menu">
                        <li><a href="/">主页</a></li>
                        <li><a href="/archive/archives.html">归档</a></li>
                        <li><a href="/about.html">关于</a></li>
                        <li><a href="#">博客</a></li>
                        <li><a href="/category/">分类</a></li>
                        <li><a href="http://www.baidu.com" title="cssMoban.com">链接</a></li>
                    </ul>
                </div>

            </div>
            <div class="clr"></div>
        </div>
    </div>

</div>
</body>
</html>
