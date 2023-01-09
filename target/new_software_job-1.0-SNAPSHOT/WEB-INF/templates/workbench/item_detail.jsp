<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--引入标签库，jstl的标签库--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String bath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<html>
<head>
    <base href="<%=bath%>">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>商品详情</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/mall.css">
    <style>
        body{
            background-color: #fff;
        }
    </style>
    <script>
        $(document).ready(function (){
            var location="${city}";
            $("#locationTxt").text("送至"+location);

            var str='';
            if('${sessionScope.sessionUser}'==''){
                str=str+'亲, 请<a href="workbench/totoLogin.do">登录 </a><span class="text-color-red"><a href="setting/user/toRegister.do">免费注册</a></span>'
            }else{
                str=str+'${sessionScope.sessionUser.loginName} 已登录';
            }
            $("#isLogin").html(str);

            $("#helpA").click(function (){
                var city=$.trim($("#locationTxt").text());
                city=city.substring(2,4);
                window.location.href='workbench/help.do/'+city;
            });

            $("#addCarBtn").click(function (){
                var city=$.trim($("#locationTxt").text());
                city=city.substring(2,4);
                window.location.href='workbench/carShow.do/'+city;
            });
        })
    </script>
</head>

<body>
    <!-- 顶部导航条 -->
    <div class="nav">
        <ul>
            <li class="nav-pull-down location">
                <img src="img/icon_location.png">
                <span id="locationTxt"></span>
            </li>

            <li>
                <a href="#">网站导航</a>
            </li>
            <li>
                <a id="helpA">客户服务</a>
            </li>
            <li>
                <a href="#">企业采购</a>
            </li>
            <li>
                <a href="#">商城会员</a>
            </li>
            <li class="nav-pull-down my-shop">
                <a href="#">我的商城</a>
                <span class="glyphicon glyphicon-menu-down"></span>
            </li>
                <li class="login-signup" id="isLogin">
            </li>
        </ul>
    </div>
    <!-- 搜索框 -->
    <div class="search">
        <div class="search-body">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="输入你想要的商品">
                <span class="input-group-btn">
                    <a href="search.html">
                        <button class="btn btn-danger btn-search" type="button">
                            <i class="fa fa-search"></i>
                        </button>
                    </a>
                </span>
            </div>
            <div class="search-keyword">
                <p>手机壳6plus 手机壳6 手机壳7 手机壳6s plus 手机壳7 手机壳华为 手机</p>
            </div>
        </div>
    </div>
    <!-- 导航条 -->

    <div class="shop-item-path">
        <div class="shop-nav-container">
            <p>手机 &nbsp > &nbsp 手机配件 &nbsp > &nbsp 手机保护套 &nbsp > &nbsp iPhone8磨砂壳</p>
        </div>
    </div>
    <!-- 商品信息展示 -->
    <div class="item-detail-show">
        <div class="item-detail-left">
            <div class="item-detail-big-img">
                <img src="./img/item-detail-1.jpg" alt="">
            </div>
            <div class="item-detail-img-row">
                <div class="item-detail-img-small">
                    <img src="./img/item-detail-1.jpg" alt="">
                </div>
                <div class="item-detail-img-small">
                    <img src="./img/item-detail-2.jpg" alt="">
                </div>
                <div class="item-detail-img-small">
                    <img src="./img/item-detail-3.jpg" alt="">
                </div>
                <div class="item-detail-img-small">
                    <img src="./img/item-detail-4.jpg" alt="">
                </div>
            </div>
        </div>
        <div class="item-detail-right">
            <div class="item-detail-title">
                <p><span class="item-detail-express">校园配送</span> 苹果8/7手机壳iPhone7 Plus保护壳全包防摔磨砂硬外壳</p>
            </div>
            <div class="item-detail-tag">
                <p><span>【满69-20元】</span> <span>【关注产品★送钢化膜】</span> <span>【次日达】</span></p>
            </div>
            <div class="item-detail-price-row">
                <div class="item-price-left">
                    <div class="item-price-row">
                        <p><span class="item-price-title">特 惠 价</span> <span class="item-price">￥28.00</span></p>
                    </div>
                    <div class="item-price-row">
                        <p>
                            <span class="item-price-title">优 惠 价</span> 
                            <span class="item-price-full-cut">满148减10</span>
                            <span class="item-price-full-cut">满218减20</span>
                            <span class="item-price-full-cut">满288减30</span>
                        </p>
                    </div>
                    <div class="item-price-row">
                        <p>
                            <span class="item-price-title">促&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;销</span>
                            <span class="item-price-full-cut">跨店满减</span>
                            <span class="item-price-full-cut">多买优惠</span>
                        </p>
                    </div>
                </div>
                <div class="item-price-right">
                    <div class="item-remarks-sum">
                        <p>累计评价</p>
                        <p><span class="item-remarks-num">7.5万+</span></p>
                    </div>
                </div>
            </div>
            <!-- 选择颜色 -->
            <div class="item-select">
                <div class="item-select-title">
                    <p>选择颜色</p>
                </div>
                <div class="item-select-column">
                    <div class="item-select-row">
                        <div class="item-select-box">
                            <div class="item-select-img">
                                <img src="./img/select/1.jpg" alt="">
                            </div>
                            <div class="item-select-intro">
                                <p>4.7英寸-深邃蓝</p>
                            </div>
                        </div>
                        <div class="item-select-box">
                            <div class="item-select-img">
                                <img src="./img/select/2.jpg" alt="">
                            </div>
                            <div class="item-select-intro">
                                <p>4.7英寸-星空黑</p>
                            </div>
                        </div>
                        <div class="item-select-box">
                            <div class="item-select-img">
                                <img src="./img/select/3.jpg" alt="">
                            </div>
                            <div class="item-select-intro">
                                <p>5.5英寸-香槟金</p>
                            </div>
                        </div>
                    </div>
                    <div class="item-select-row">
                        <div class="item-select-box">
                            <div class="item-select-img">
                                <img src="./img/select/4.jpg" alt="">
                            </div>
                            <div class="item-select-intro">
                                <p>5.5英寸-玫瑰金</p>
                            </div>
                        </div>
                        <div class="item-select-box">
                            <div class="item-select-img">
                                <img src="./img/select/5.jpg" alt="">
                            </div>
                            <div class="item-select-intro">
                                <p>5.5英寸-深邃蓝</p>
                            </div>
                        </div>
                        <div class="item-select-box">
                            <div class="item-select-img">
                                <img src="./img/select/6.jpg" alt="">
                            </div>
                            <div class="item-select-intro">
                                <p>5.5英寸-星空黑</p>
                            </div>
                        </div>
                    </div>
                    <div class="item-select-row">
                        <div class="item-select-box">
                            <div class="item-select-img">
                                <img src="./img/select/7.jpg" alt="">
                            </div>
                            <div class="item-select-intro">
                                <p>4.7英寸-香槟金</p>
                            </div>
                        </div>
                        <div class="item-select-box">
                            <div class="item-select-img">
                                <img src="./img/select/8.jpg" alt="">
                            </div>
                            <div class="item-select-intro">
                                <p>4.7英寸-玫瑰金</p>
                            </div>
                        </div>
                        <div class="item-select-box">
                            <div class="item-select-img">
                                <img src="./img/select/9.jpg" alt="">
                            </div>
                            <div class="item-select-intro">
                                <p>4.7英寸-中国红</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 选择套餐 -->
            <div class="item-select">
                <div class="item-select-title">
                    <p>优惠套装</p>
                </div>
                <div class="item-select-row">
                    <div class="item-select-class">
                        <span>优惠套餐一</span>
                    </div>
                    <div class="item-select-class">
                        <span>优惠套餐二</span>
                    </div>
                    <div class="item-select-class">
                        <span>优惠套餐三</span>
                    </div>
                    <div class="item-select-class">
                        <span>优惠套餐四</span>
                    </div>
                    <div class="item-select-class">
                        <span>优惠套餐五</span>
                    </div>
                </div>
            </div>
            <!-- 分期 -->
            <div class="item-select">
                <div class="item-select-title">
                    <p>花呗分期</p>
                </div>
                <div class="item-select-row">
                    <div class="item-select-class">
                        <span>不分期</span>
                    </div>
                    <div class="item-select-class">
                        <span>￥9.47 x 3期</span>
                    </div>
                    <div class="item-select-class">
                        <span>￥4.81 x 6期</span>
                    </div>
                    <div class="item-select-class">
                        <span>￥2.47 x 12期</span>
                    </div>
                    <div class="item-select-class">
                        <span>￥1.31 x 24期</span>
                    </div>
                </div>
            </div>
            <div class="add-buy-car-box">
                <a >
                    <button class="btn-add-buy-car btn btn-danger" id="addCarBtn">
                        加入购物车
                    </button>
                </a>
            </div>
        </div>
    </div>
    <!-- 商品详细展示 -->
    <div class="item-intro-show">
        <div class="item-intro-recommend">
            <div class="item-recommend-title">
                <p>店铺热销</p>
            </div>
            <div class="item-intro-recommend-column">
                <div class="item-recommend-column">
                    <div class="item-recommend-img">
                        <img src="./img/sidebar/1.jpg" alt="">
                    </div>
                    <div class="item-recommend-intro">
                        <span><span class="item-recommend-top-num">1</span> 热销165077件</span>
                        <span class="item-recommend-price">￥28.00</span>
                    </div>
                </div>
                <div class="item-recommend-column">
                    <div class="item-recommend-img">
                        <img src="./img/sidebar/2.jpg" alt="">
                    </div>
                    <div class="item-recommend-intro">
                        <span><span class="item-recommend-top-num">2</span> 热销112892件</span>
                        <span class="item-recommend-price">￥36.00</span>
                    </div>
                </div>
                <div class="item-recommend-column">
                    <div class="item-recommend-img">
                        <img src="./img/sidebar/3.jpg" alt="">
                    </div>
                    <div class="item-recommend-intro">
                        <span><span class="item-recommend-top-num">3</span> 热销84980件</span>
                        <span class="item-recommend-price">￥28.00</span>
                    </div>
                </div>
                <div class="item-recommend-column">
                    <div class="item-recommend-img">
                        <img src="./img/sidebar/4.jpg" alt="">
                    </div>
                    <div class="item-recommend-intro">
                        <span><span class="item-recommend-top-num">4</span> 热销36051件</span>
                        <span class="item-recommend-price">￥48.00</span>
                    </div>
                </div>
                <div class="item-recommend-column">
                    <div class="item-recommend-img">
                        <img src="./img/sidebar/5.jpg" alt="">
                    </div>
                    <div class="item-recommend-intro">
                        <span><span class="item-recommend-top-num">5</span> 热销20858件</span>
                        <span class="item-recommend-price">￥25.00</span>
                    </div>
                </div>
                <div class="item-recommend-column">
                    <div class="item-recommend-img">
                        <img src="./img/sidebar/6.jpg" alt="">
                    </div>
                    <div class="item-recommend-intro">
                        <span><span class="item-recommend-top-num">6</span> 热销15672件</span>
                        <span class="item-recommend-price">￥62.00</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="item-intro-detail">
            <div class="item-intro-nav">
                <ul>
                    <li>商品介绍</li>
                    <li>规格包装</li>
                    <li>售后保障</li>
                    <li>商品评价(7.5万+)</li>
                </ul>
            </div>
            <div class="item-intro-img">
                <img src="./img/detail/1.jpg" alt="">
                <img src="./img/detail/2.jpg" alt="">
                <img src="./img/detail/3.jpg" alt="">
                <img src="./img/detail/4.jpg" alt="">
                <img src="./img/detail/5.jpg" alt="">
                <img src="./img/detail/6.jpg" alt="">
                <img src="./img/detail/7.jpg" alt="">
                <img src="./img/detail/8.jpg" alt="">
            </div>
        </div>
    </div>
    <!-- 底部 -->
    <footer class="footer">
        <div class="clearfix"></div>
        <div class="icon-row">
            <div class="footer-icon">
                <h5 class="footer-icon-child"></h5>
                <span class="footer-icon-text">品类齐全，轻松购物</span>
            </div>
            <div class="footer-icon">
                <h5 class="footer-icon-child footer-icon-child-2"></h5>
                <span class="footer-icon-text">多仓直发，极速配送</span>
            </div>
            <div class="footer-icon">
                <h5 class="footer-icon-child footer-icon-child-3"></h5>
                <span class="footer-icon-text">正品行货，精致服务</span>
            </div>
            <div class="footer-icon">
                <h5 class="footer-icon-child footer-icon-child-4"></h5>
                <span class="footer-icon-text">天天低价，畅选无忧</span>
            </div>
        </div>
        <div class="service-intro">
            <div class="servece-type">
                <div class="servece-type-info">
                    <ul>
                        <li>购物指南</li>
                        <li>购物流程</li>
                        <li>会员介绍</li>
                        <li>生活旅行</li>
                        <li>常见问题</li>
                        <li>大家电</li>
                        <li>联系客服</li>
                    </ul>
                </div>
                <div class="servece-type-info">
                    <ul>
                        <li>配送方式</li>
                        <li>上门自提</li>
                        <li>211限时达</li>
                        <li>配送服务查询</li>
                        <li>配送费收取标准</li>
                        <li>海外配送</li>
                    </ul>
                </div>
                <div class="servece-type-info">
                    <ul>
                        <li>支付方式</li>
                        <li>货到付款</li>
                        <li>在线支付</li>
                        <li>分期付款</li>
                        <li>邮局汇款</li>
                        <li>公司转账</li>
                    </ul>
                </div>
                <div class="servece-type-info">
                    <ul>
                        <li>售后服务</li>
                        <li>售后政策</li>
                        <li>价格保护</li>
                        <li>退款说明</li>
                        <li>返修/退换货</li>
                        <li>取消订单</li>
                    </ul>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="friend-link">
                <div class="friend-link-item">
                    <ul>
                        <li><span class="link-item">关于我们</span></li>
                        <li><span class="link-item">联系我们</span></li>
                        <li><span class="link-item">联系客服</span></li>
                        <li><span class="link-item">合作招商</span></li>
                        <li><span class="link-item">商家帮助</span></li>
                        <li><span class="link-item">营销中心</span></li>
                        <li><span class="link-item">销售联盟</span></li>
                        <li><span class="link-item">校园社区</span></li>
                        <li><span class="link-item">风险监测</span></li>
                        <li><span class="link-item link-last-item">隐私政策</span></li>
                    </ul>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="copyright">
                <p>Copyright © 2022 BY Gavin 田双标 ， Dddwaiting 丁毅</p>
            </div>
        </div>
    </footer>
</body>
<script type="text/javascript">
    $('.item-detail-img-small img').hover(function () {
        $('.item-detail-big-img img').attr('src', $(this).attr('src'));
    });
</script>
</html>