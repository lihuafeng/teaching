<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>首页</title>

    <link rel="stylesheet" type="text/css" href="/static/css/website/main.css">
    <link rel="stylesheet" type="text/css" href="/static/lib/myLayui/css/layui.css">
    <script type="text/javascript" src="/static/lib/myLayui/layui.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body>

<div class="site-nav-bg">
    <div class="site-nav w1200">
        <p class="sn-back-home">
            <i class="layui-icon layui-icon-home"></i>
            <a href="#">首页</a>
        </p>
        <div class="sn-quick-menu">
            <div class="login"><a href="/website/login">登录</a></div>
            <div class="sp-cart"><a href="shopcart.html">购物车</a><span>2</span></div>
        </div>
    </div>
</div>



<div class="header">
    <div class="headerLayout w1200">
        <div class="headerCon">
            <h1 class="mallLogo">
                <a href="#" title="母婴商城">
                    <img src="/static/images/logo/32.ico">
                </a>
            </h1>
            <div class="mallSearch">
                <form action="" class="layui-form" novalidate>
                    <input type="text" name="title" required  lay-verify="required" autocomplete="off" class="layui-input"
                           placeholder="请输入想要搜索的课程">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">
                        <i class="layui-icon layui-icon-search"></i>
                    </button>
                    <input type="hidden" name="" value="">
                </form>
            </div>
        </div>
    </div>
</div>

<div class="content content-nav-base commodity-content" >
    <div class="main-nav">
        <div class="inner-cont0">
            <div class="inner-cont1 w1200">
                <div class="inner-cont2">
                    <a href="/website/index" class="active">所有课程</a>
                    <a href="/website/index">智能推荐</a>
                    <a href="/website/index">BBS论坛文章</a>
                    <a href="/website/index">关于我们</a>
                </div>
            </div>
        </div>
    </div>

    <div class="commod-cont-wrap">
        <div class="commod-cont w1200 layui-clear">
            <div class="left-nav">
                <div class="title">课程分类</div>
                <div class="list-box">
                    <dl>
                        <dt>奶粉辅食</dt>
                        <dd><a href="javascript:;">进口奶粉</a></dd>
                        <dd><a href="javascript:;">宝宝辅食</a></dd>
                        <dd><a href="javascript:;">营养品</a></dd>
                    </dl>
                    <dl>
                        <dt>儿童用品</dt>
                        <dd><a href="javascript:;">纸尿裤</a></dd>
                        <dd><a href="javascript:;">婴儿湿巾</a></dd>
                        <dd><a href="javascript:;">婴儿车</a></dd>
                        <dd><a href="javascript:;">婴儿床</a></dd>
                        <dd><a href="javascript:;">儿童安全座椅</a></dd>
                    </dl>
                </div>
            </div>

            <div class="right-cont-wrap">
                <div class="right-cont">
                    <div class="sort layui-clear">
                        <a class="active" href="javascript:;" event = 'volume'>销量</a>
                        <a href="javascript:;" event = 'price'>价格</a>
                        <a href="javascript:;" event = 'newprod'>新品</a>
                        <a href="javascript:;" event = 'collection'>收藏</a>
                    </div>
                    <div class="prod-number">
                        <span>200个</span>
                    </div>
                    <div class="cont-list layui-clear" id="list-cont">

                        <div class="item">
                            <div class="img">
                                <a href="javascript:;">
                                    <img style="width: 280px;px; height:170px;" src="http://szimg.mukewang.com/58f57d200001461105400300-360-202.jpg">
                                </a>
                            </div>
                            <div class="text">
                                <p class="title">森系小清新四件套</p>
                                <p class="price">
                                    <span class="pri">￥200</span>
                                    <span class="nub">1266付款</span>
                                </p>
                            </div>
                        </div>

                        <div class="item">
                            <div class="img">
                                <a href="javascript:;">
                                    <img style="width: 280px;px; height:170px;" src="http://szimg.mukewang.com/58f57d200001461105400300-360-202.jpg">
                                </a>
                            </div>
                            <div class="text">
                                <p class="title">森系小清新四件套</p>
                                <p class="price">
                                    <span class="pri">￥200</span>
                                    <span class="nub">1266付款</span>
                                </p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <a href="javascript:;">
                                    <img style="width: 280px;px; height:170px;" src="http://szimg.mukewang.com/58f57d200001461105400300-360-202.jpg">
                                </a>
                            </div>
                            <div class="text">
                                <p class="title">森系小清新四件套</p>
                                <p class="price">
                                    <span class="pri">￥200</span>
                                    <span class="nub">1266付款</span>
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- 模版引擎导入 -->
                    <!-- <script type="text/html" id="demo">
                      {{# layui.each(d.menu.milk.content,function(index,item){}}
                        <div class="item">
                          <div class="img">
                            <a href="javascript:;"><img src="{{item.img}}"></a>
                          </div>
                          <div class="text">
                            <p class="title"></p>
                            <p class="price">
                              <span class="pri">{{item.pri}}</span>
                              <span class="nub">{{item.nub}}</span>
                            </p>
                          </div>
                        </div>
                      {{# }); }}
                    </script> -->
                    <div id="demo0" style="text-align: center;"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- footer部分 -->
<div class="footer">
    <div class="layui-container">
        <p class="footer-web">
            <a href="javascript:;">合作伙伴</a>
            <a href="javascript:;">企业画报</a>
            <a href="javascript:;">JS网</a>
            <a href="javascript:;">千图网</a>
            <a href="javascript:;">昵图网</a>
            <a href="javascript:;">素材网</a>
            <a href="javascript:;">花瓣网</a>
        </p>
        <div class="layui-row footer-contact">
            <div class="layui-col-sm2 layui-col-lg1"><img src="/static/images/website/QrCode.jpg"></div>
            <div class="layui-col-sm10 layui-col-lg11">
                <div class="layui-row">
                    <div class="layui-col-sm6 layui-col-md8 layui-col-lg9">
                        <p class="contact-top"><i class="layui-icon layui-icon-cellphone"></i>&nbsp;400-8888888&nbsp;&nbsp;(9:00-18:00)</p>
                        <p class="contact-bottom"><i class="layui-icon layui-icon-home"></i>&nbsp;88888888@163.com</span></p>
                    </div>
                    <div class="layui-col-sm6 layui-col-md4 layui-col-lg3">
                        <p class="contact-top"><span class="right">该模板版权归 <a href="https://www.layui.com/" target="_blank">layui.com</a> 所有</span></p>
                        <p class="contact-bottom"><span class="right">Copyright&nbsp;©&nbsp;2016-2018&nbsp;&nbsp;ICP&nbsp;备888888号</span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style type="text/css">
    /*底部*/
    .footer{padding-bottom: 70px; background: #5e6664;}
    .footer .footer-web{padding-top: 50px; padding-bottom: 63px;}
    .footer .footer-web a{color: #a5aaa9; line-height: 22px; margin-right: 20px; transition: 0.3s;}
    .footer .footer-web a:hover{color: #dce1e0; transition: 0.3s;}
    .footer .footer-contact{color: #fff;}
    .footer .footer-contact a{color: #a5aaa9;}
    .footer .footer-contact .contact-top{padding-top: 20px; line-height: 30px;}
    .footer .footer-contact .contact-bottom{line-height: 35px;}</style>

<script>

    layui.config({
        base: '/static/js/website/' //你存放新模块的目录，注意，不是layui的模块目录
    }).use(['mm','laypage','jquery'],function(){
        var laypage = layui.laypage,$ = layui.$,
            mm = layui.mm;
        laypage.render({
            elem: 'demo0'
            ,count: 100 //数据总数
        });

        $('.sort a').on('click',function(){
            $(this).addClass('active').siblings().removeClass('active');
        })
        $('.list-box dt').on('click',function(){
            if($(this).attr('off')){
                $(this).removeClass('active').siblings('dd').show()
                $(this).attr('off','')
            }else{
                $(this).addClass('active').siblings('dd').hide()
                $(this).attr('off',true)
            }
        })

    });


</script>


</body>
</html>