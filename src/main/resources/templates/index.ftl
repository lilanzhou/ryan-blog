<#include "header.ftl">
<article>
    <div class="l_box f_l">
        <div class="banner f_l">
            <script type="text/javascript">
                //设置
                myFocus.set({
                    id: 'myFocus',//ID
                    pattern: 'mF_fancy'//风格
                });
            </script>
            <div id="myFocus"><!--焦点图盒子-->
                <div class="loading"></div>
                <!--载入画面(可删除)-->
                <div class="pic"><!--图片列表-->
                    <ul>
                        <li><a href="#1"><img src="../images/1m.jpg" thumb="" alt="个人博客" text="一起加油"/></a></li>
                        <li><a href="#2"><img src="../images/2m.jpg" thumb="" alt="个人博客" text="我爱博客"/></a></li>
                    <#--<li><a href="#3"><img src="../images/3m.jpg" thumb="" alt="酷站代码特效" text="图片3更详细的描述文字" /></a></li>-->
                        <li><a href="#4"><img src="../images/4m.jpg" thumb="" alt="个人博客" text="你好世界"/></a></li>
                    <#--<li><a href="#5"><img src="../images/5m.jpg" thumb="" alt="酷站代码教程" text="图片5更详细的描述文字" /></a></li>-->
                    </ul>
                </div>
            </div>
        </div>
        <!--banner代码 结束 -->

        <div class="focustext f_r">
            <section class="ft01">
                <h3><a href="/" target="_blank">个人博客</a></h3>
                <p>天涯何处不相逢</p>
            </section>
            <section class="ft02">
                <h3><a href="/" target="_blank">个人博客搭建中</a></h3>
                <p>在快节奏的生活里，我们不知不觉中就成为住在别人手机里的朋友。</p>
            </section>
        </div>
        <div class="blank"></div>
        <div class="topnews">
            <h2><span><a href="/" target="_blank">栏目标题</a></span><b>文章</b>推荐</h2>

            <#list page as articles>
            <div class="blogs">
                <figure><img src="../images/02.jpg"></figure>
                <ul>
                    <h3><a href="/article/${articles.id}">${articles.title}</a></h3>
                    <h4 style="display: -webkit-box;-webkit-line-clamp: 3;-webkit-box-orient: vertical;overflow: hidden;test-overflow:ellipsis">
                        <a href="/">${articles.content}</a>
                    </h4>
                    <p class="autor">
                        <span class="lm f_l"><a href="/">李兰舟</a></span>
                        <span class="dtime f_l">${articles.createTime?string("yyyy-MM-dd ")}</span>
                        <span class="viewnum f_r">浏览（<a href="/">${articles.views}</a>）</span>
                        <span class="pingl f_r">评论（<a href="/">${articles.commentCount}</a>）</span>
                    </p>
                </ul>
            </div>
            </#list>
        </div>
        <div class="page">
        <p>当前第 <span >${pageInfo.pageNum}</span> 页,总 <span >${pageInfo.getPageSize()}</span> 页,共 <span >${pageInfo.total}</span> 条记录</p>
            <#--<#if pageInfo.hasPreviousPage==true><a href="/page/1"><b>首页</b></a></#if>-->
            <#if pageInfo.getPageNum()!=1><a href="/page/${pageInfo.getPageNum()-1}"><b>上一页</b></a></#if>

            <#list pageInfo.navigatepageNums as nav>
              <#if nav!=pageInfo.pageNum>
                <a href="/page/${nav}"><b>${nav}</b></a>
              <#else >
              <b>${nav}</b>
              </#if>
            </#list>
     <#if pageInfo.hasNextPage==true><a href="/page/${pageInfo.getPageNum()+1}"><b>下一页</b></a></#if>
<#--<#if pageInfo.hasNextPage==true>-->
     <#--<a href="/page/${pageInfo.getPageSize()}"><b>末页</b></a>-->
<#--</#if>-->
      </div>

    </div>


    <div class="r_box f_r">
        <div class="tit01">
            <h3>关注Ryan</h3>
            <div class="gzwm">
                <ul>
                    <li><a class="github" href="https://github.com/lilanzhou" target="_blank">github</a></li>
                    <li><a class="txwb" href="#" target="_blank">腾讯微博</a></li>
                    <li><a class="rss" href="mailto:lilanzhoullz@163.com" target="_blank">邮箱</a></li>
                    <li><a class="wx" href="#" onmouseover="tip.start(this)"
                           tips="<font color='#fff'>关注<b>Ryan</b>微信账号</font><br><b><img src='../images/weixintop.jpg'></b>">微信</a>
                    </li>
                    <div id="mjs:tip" class="tip" style="position:absolute;left:0;top:0;display:none;"></div>
                    <script>
                        var tip = {
                            $: function (ele) {
                                if (typeof(ele) == "object")
                                    return ele;
                                else if (typeof(ele) == "string" || typeof(ele) == "number")
                                    return document.getElementById(ele.toString());
                                return null;
                            },
                            mousePos: function (e) {
                                var x, y;
                                var e = e || window.event;
                                return {
                                    x: e.clientX + document.body.scrollLeft + document.documentElement.scrollLeft,
                                    y: e.clientY + document.body.scrollTop + document.documentElement.scrollTop
                                };
                            },
                            start: function (obj) {
                                var self = this;
                                var t = self.$("mjs:tip");
                                obj.onmousemove = function (e) {
                                    var mouse = self.mousePos(e);
                                    t.style.left = mouse.x + 10 + 'px';
                                    t.style.top = mouse.y + 10 + 'px';
                                    t.innerHTML = obj.getAttribute("tips");
                                    t.style.display = '';
                                };
                                obj.onmouseout = function () {
                                    t.style.display = 'none';
                                };
                            }
                        }
                    </script>

                </ul>
            </div>
        </div>
        <!--tit01 end-->
        <div class="ad300x100"><img src="../images/ad300x100.jpg"></div>
    <#include "footer.ftl">