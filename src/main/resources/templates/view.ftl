<#include "header.ftl">
<article>
    <div class="l_box f_l">
        <div class="topnews">
            <h2>欢迎访问Ryan博客平台</h2>
            <div class="news_title">${articles.title}</div>
            <div class="news_author">
                <span class="au01">李兰舟</span>
                <span class="au02">${articles.createTime?string("yyyy-MM-dd")}</span>
                <span class="au03">共<b>${articles.views}</b>人围观</span>
                <#if articles.commentCount??>
                <#else >
                <strong class="au04 f_r">暂无评论</strong>
                </#if>
            </div>

            <div class="tags">
            <#list tags as tag>
                <a href="/" target="_blank">${tag.name}</a>
            </#list>
            </div>

            <div class="news_about"><strong>简介</strong>:简介内容</div>
            <div class="news_content" >
                <ul>
                    <p style="font-size: 16px">${articles.content}</p>

                </ul>
            </div>
            <div class="fenx">分享：</div>
            <div class="nextinfo">
                <#assign a="${articles.id}">
                <#if  (a?eval &gt;1)>
                <p>上一篇：<a href="/article/${articles.id-1}" >${previousArticle.title}</a></p>
                <#else >
                <p>上一篇：<a href="/article/1" >${articles.title}</a></p>
                </#if>
                <#if  (a?eval &lt;999)>
                <p>下一篇：<a href="/article/${articles.id+1}">${nextArticle.title}</a></p>
                <#else >
                 <p>下一篇：<a href="/article/1">${articles.title}</a></p>
                </#if>
            </div>
            <div class="otherlink">
                <h2>相关文章</h2>
                <ul>
                    <#list aboutTitle as about>
                    <li><a href="/article/${about.id}" title="相关文章">${about.title}</a></li>
                    <#--<li><a href="/" target="_blank">标题</a></li>-->
                    </#list>
                </ul>
            </div>
            <div class="news_pl">
                <h2>文章评论</h2>
                <ul>
                </ul>
            </div>
        </div>
    </div>
    <div class="r_box f_r">
        <script type="text/javascript">
            //设置
            myFocus.set({
                id:'myFocus',//ID
                pattern:'mF_kdui'//风格
            });
        </script>
        <div id="myFocus"><!--焦点图盒子-->
            <div class="loading"></div>
            <!--载入画面(可删除)-->
            <div class="pic"><!--图片列表-->
                <ul>
                    <li><a href="#1"><img src="../images/1m.jpg" thumb="" alt="个人博客网站" text="图片1更详细的描述文字" /></a></li>
                    <li><a href="#2"><img src="../images/2m.jpg" thumb="" alt="个人博客网站" text="图片2更详细的描述文字" /></a></li>
                    <li><a href="#3"><img src="../images/3m.jpg" thumb="" alt="个人博客网站" text="图片3更详细的描述文字" /></a></li>
                    <li><a href="#4"><img src="../images/4m.jpg" thumb="" alt="个人博客网站" text="图片4更详细的描述文字" /></a></li>
                    <li><a href="#5"><img src="../images/5m.jpg" thumb="" alt="个人博客网站" text="图片5更详细的描述文字" /></a></li>
                </ul>
            </div>
        </div>

<#include "footer.ftl">
