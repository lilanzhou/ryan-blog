<#include "header.ftl">
<article>
    <div class="l_box f_l">
        <div class="topnews">
            <h2><span><a href="/" target="_blank">栏目标题</a></span><b>文章</b>推荐</h2>
           <#list categoryList as c>
            <div class="blogs">
                <figure><img src="../images/02.jpg"></figure>
                <ul>
                    <h3><a href="/article/${c.id}">${c.title}</a></h3>
                    <p style="display: -webkit-box;-webkit-line-clamp: 3;-webkit-box-orient: vertical;overflow: hidden;test-overflow:ellipsis">
                        <a href="/">${c.content}</a>
                    </p>
                    <p class="autor">
                        <span class="lm f_l"><a href="/">李兰舟</a></span>
                        <span class="dtime f_l">${c.createTime?string("yyyy-MM-dd")}</span>
                        <span class="viewnum f_r">浏览（<a href="/">${c.views}</a>）</span>
                        <span class="pingl f_r">评论（<a href="/">${c.commentCount}</a>）</span></p>
                </ul>
            </div>
           </#list>
        </div>


        <div class="page">
            <p>当前第 <span >${pageC.pageNum}</span> 页,总 <span >${pageC.getPageSize()}</span> 页,共 <span >${pageC.total}</span> 条记录</p>
        <#--<#if pageInfo.hasPreviousPage==true><a href="/page/1"><b>首页</b></a></#if>-->
            <#if pageC.getPageNum()!=1><a href="/page/${pageC.getPageNum()-1}"><b>上一页</b></a></#if>

            <#list pageC.navigatepageNums as nav>
                <#if nav!=pageC.pageNum>
                <a href="/page/${nav}"><b>${nav}</b></a>
                <#else >
              <b>${nav}</b>
                </#if>
            </#list>
     <#if pageC.hasNextPage==true><a href="/page/${pageC.getPageNum()+1}"><b>下一页</b></a></#if>
        <#--<#if pageInfo.hasNextPage==true>-->
        <#--<a href="/page/${pageInfo.getPageSize()}"><b>末页</b></a>-->
        <#--</#if>-->
        </div>





    </div>
    <div class="r_box f_r">
        <div class="covers">
            <div id="slide-holder">
                <div id="slide-runner"> <a href="/" target="_blank"><img id="slide-img-1" src="../images/a1.jpg"  alt="" /></a> <a href="/" target="_blank"><img id="slide-img-2" src="../images/a2.jpg"  alt="" /></a> <a href="/" target="_blank"><img id="slide-img-3" src="../images/a3.jpg"  alt="" /></a> <a href="/" target="_blank"><img id="slide-img-4" src="../images/a4.jpg"  alt="" /></a>
                    <div id="slide-controls">
                        <p id="slide-client" class="text"><strong></strong><span></span></p>
                        <p id="slide-desc" class="text"></p>
                        <p id="slide-nav"></p>
                    </div>
                </div>
            </div>
            <script>
                if(!window.slider) {
                    var slider={};
                }

                slider.data= [
                    {
                        "id":"slide-img-1", // 与slide-runner中的img标签id对应
                        "client":"标题1",
                        "desc":"" //这里修改描述
                    },
                    {
                        "id":"slide-img-2",
                        "client":"标题2",
                        "desc":""
                    },
                    {
                        "id":"slide-img-3",
                        "client":"标题3",
                        "desc":""
                    },
                    {
                        "id":"slide-img-4",
                        "client":"标题4",
                        "desc":""
                    }
                ];

            </script>
        </div>

<#include "footer.ftl">