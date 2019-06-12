
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人博客</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link href="../css/base.css" rel="stylesheet">
    <link href="../css/index.css" rel="stylesheet">

    <link href="../css/archives.css" rel="stylesheet">

    <link href="../css/ryanz.css" rel="stylesheet">
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
    <script src="../js/calender.js"></script>

</head>
<body>
<header>



        <!--头部-->
        <div class="header">
            <div class="head-nav1">
                <div class="head-nav-con1 clearFloat">
                    <ul>
                        <li><a href="/">博客首页</a></li>
                        <li class="drop-down"><a href="#">新随笔</a>
                            <ul class="drop-down-content">
                            </ul>
                        </li>
                    </ul>
                    <ul>
                        <li><a href="/adout.html">订阅</a></li>
                        <li><a href="/adout.html">管理</a></li>
                    </ul>
                </div>
            </div>
        </div>


</header>




  <div id="container1">

    <#--<div id="main1">-->

        <div class="cat">
            <div id="first">
                <td >博主:<a href="/about.html" >小小土豆</a><br></td>
                <td>生日:09月27日</td>
            </div>

            <div id="sencod">
                <div id='calen'></div>

                <script>
                    //只需实例化calendar实例即可，传入的参数为html对象的id，举个例子如下
                    new calendar('calen');
                </script>
            </div>
            <div id="four">

                <div id="ryana" ><p>文章归档</p></div>
                <div>
                    <#list group as archives>
                    <li  class="bianli" style="display: block">
                        <a class="bianse"style="font-size: 15px" href="/archive/${archives.createTime?string("yyyyMM")}.html" >${archives.createTime?string("yyyy年MM月")}(${archives.total})</a>

                    </li>
                    <HR align=left width=258 color=#987cb9 SIZE=1>
                </#list>

                </div>
            </div>


        </div>

        <div class="content">
          <#if group1??>
         <#list group1 as g>

            <div id="third">
                <a style="font-size: 25px;margin-left: 400px">${g.createTime?string("yyyy年MM月dd日")}</a>
                <li style="display: block">


                    <a class="bianse" style="font-weight: bold" href="/article/${g.id}">${g.title}</a>
                    <hr>
                    <p style=" font-size:18px;display: -webkit-box;-webkit-line-clamp: 3;-webkit-box-orient: vertical;overflow: hidden;test-overflow:ellipsis">
                        简介:${g.content}
                    </p>
                    <p><a href="/article/${g.id}" class="bianse">《阅读全文》</a></p>
                </li>

            </div>
         </#list>
        </#if>

        </div>


    <#--</div>-->



  </div>
</body>
</html>