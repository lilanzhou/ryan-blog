<div class="moreSelect" id="lp_right_select">
    <script>
        window.onload = function () {
            var oLi = document.getElementById("tab").getElementsByTagName("li");
            var oUl = document.getElementById("ms-main").getElementsByTagName("div");

            for (var i = 0; i < oLi.length; i++) {
                oLi[i].index = i;
                oLi[i].onmouseover = function () {
                    for (var n = 0; n < oLi.length; n++) oLi[n].className = "";
                    this.className = "cur";
                    for (var n = 0; n < oUl.length; n++) oUl[n].style.display = "none";
                    oUl[this.index].style.display = "block"
                }
            }
        }
    </script>
    <div class="ms-top">
        <ul class="hd" id="tab">
            <li class="cur"><a href="/">点击排行</a></li>
            <li><a href="/">最新文章</a></li>
            <li><a href="/">博主推荐</a></li>
        </ul>
    </div>

    <div class="ms-main" id="ms-main">


        <div class="bd bd-news " style="display: block;OVERFLOW: auto; WIDTH:260px; HEIGHT:200px; background-color:#fff" >

            <ul>
                <#list hot as a>

                <li>
                    <a href="/article/${a.id}" target="_blank">${a.title}</a>
                </li>
            </#list>
            </ul>

        </div>


        <div class="bd bd-news" style="OVERFLOW:auto; WIDTH:260px; HEIGHT:200px; background-color:#fff">

            <ul>
                <#list article as newArticle>
                <li><a href="/article/${newArticle.id}" target="_blank">${newArticle.title}</a></li>
            </#list>
            </ul>

        </div>


        <div class="bd bd-news">

            <ul>

            <#list recommend as re>
                <li><a href="/article/${re.id}" target="_blank">${re.title}</a></li>
                </#list>
            </ul>

        </div>
    </div>

    <!--ms-main end -->
</div>
<!--切换卡 moreSelect end -->

<div class="cloud">
    <h3>标签云</h3>
    <ul>
        <#list tag as tags >
        <a href="/category/${tags.name}">${tags.name}</a>
    </#list>
    </ul>
</div>
<div class="tuwen">
    <h3>天气预告</h3>
    <ul>
        <iframe allowtransparency="true" frameborder="0" width="387" height="98" scrolling="no"
                src="//tianqi.2345.com/plugin/widget/index.htm?s=2&z=1&t=0&v=0&d=3&bd=1&k=00ff80&f=ff8040&ltf=009944&htf=cc0000&q=1&e=1&a=1&c=71467&w=387&h=98&align=left">
        </iframe>
    </ul>
</div>
<div class="links">
    <h3><span>[<a href="/">申请友情链接</a>]</span>友情链接</h3>
    <ul>
        <li><a href="https://github.com/lilanzhou">github地址链接</a></li>

    </ul>
</div>
</div>
<!--r_box end -->
</article>
<footer>
    <div class="endfoot">
        <div class="ft-info f_l">
            <div class="ftlogo"><a href="#" target="_blank"><img src="../images/logo.png"></a></div>
            <div class="ft-title">
                <p>Ryan个人博客平台! </p>
            </div>
        </div>
        <div class="ft-list f_r">

            <div class="ft-shares">
                <a class="shares-sina" title="新浪微博" href="#" target="_blank"></a>
                <a class="shares-ten" title="腾讯微博" href="#" target="_blank"></a>

                <a class="shares-dib" href="#" target="_blank"></a>
            </div>

            <div class="ft-nav"><a href="#" target="_blank">关于Ryan</a> <a href="#" target="_blank">联系Ryan</a> <a
                    href="#" target="_blank">版权声明</a> <a href="#" id="qaurl">问题反馈</a> <a href="#"
                                                                                         target="_blank">商务合作</a></div>
            <p class="ft-copyright"> 备案号码</p>

        </div>
    </div>
    <div id="tbox"><a id="togbook" href="/"></a> <a id="gotop" href="javascript:void(0)"></a></div>
</footer>
</body>
</html>
