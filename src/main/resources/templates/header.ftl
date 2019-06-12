<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人博客</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link href="../css/base.css" rel="stylesheet">
    <link href="../css/index.css" rel="stylesheet">
    <link href="../css/media.css" rel="stylesheet">
    <link href="../css/list.css" rel="stylesheet">
    <link href="../css/my.css" rel="stylesheet">
    <link href="../css/view.css" rel="stylesheet">
    <#--<link href="../css/main.css" rel="stylesheet">-->

    <script type="text/javascript" src="../js/myfocus-2.0.4.min.js"></script>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/lrtk.js"></script>
    <!--[if lt IE 9]>
    <script src="../js/modernizr.js"></script>
    <![endif]-->

    <!-- 返回顶部调用 begin -->
    <script type="text/javascript" src="../js/up/jquery.js"></script>
    <script type="text/javascript" src="../js/up/js.js"></script>
    <!-- 返回顶部调用 end-->

</head>
<body>
<header>
    <div class="topbg">
        <ul class="topnav">
            <a href="/ " target="_blank">Home</a>
            <a href="/ " target="_blank">官方微博</a>
            <a href="/ " target="_blank">关于我们</a>
        </ul>
    </div>
    <div class="topbgline"></div>
    <div class="logo">
        <div class="logo_l f_l"><a href="/"><img src="../images/logo.png"></a></div>
        <div class="logo_r f_r">
            <div class="sousuo">
                <form id="form1" class="myparent">

                    <input type="text" name="aboutTitle" id="aboutTitle" placeholder="请输入关键字">
                    <input type="button" id="sousuo" value="搜索">

                </form>
            </div>
        </div>
    </div>
    <script>
    $("#sousuo").click(function () {
            var aboutTitle = $("#aboutTitle").val();  //获取输入的信息
           
            if (aboutTitle=="") {              //如果没有数据，就return掉
                alert("内容不为空");
                return;
            }
            $.ajax({       
                type: "post",
                url: "/search",
                data: {"aboutTitle": aboutTitle},
                  dataType:"json",   
                      success: function (data) {
                    if (data.message=="true") {   //返回的是true，弹窗提示成功，并跳转到首页
                    //     alert("有数据");                
                          window.location.href = "/tosearch/"+$("#aboutTitle").val();
                    }
                    else {
                        alert("没有要搜索的内容");
                    }
                }
            });
        })
    </script>
    <div class="main">
        <!--头部-->
        <div class="header">
            <div class="head-nav">
                <div class="head-nav-con clearFloat">
                    <ul>
                        <li><a href="/">博客首页</a></li>
                        <li class="drop-down"><a href="#">文章分类</a>
                            <ul class="drop-down-content">

                                <#list category as categories>
                                <li><a href="/category/${categories.name}">${categories.name}</a></li>
                            </#list>

                    </ul>
                    </li>
                    </ul>
                    <ul>
                        <li><a href="/adout.html">关于个人</a></li>
                        <li class="drop-down"><a href=/archive/archives.html>文章归档</a>

                        </li>
                        <li><a href="/adout.html">网上留言</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</header>