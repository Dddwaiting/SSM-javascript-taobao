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
    <title>客户服务</title>
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
                str=str+'亲, 请<a href="workbench/totoLogin.do">登录 </a><span class="text-color-red"><a href="signup.html">免费注册</a></span>'
            }else{
                str=str+'${sessionScope.sessionUser.loginName} 已登录';
            }
            $("#isLogin").html(str);

            //为搜索按钮添加单击事件
            $("#searchA").click(function (){
                var city=$.trim($("#locationTxt").text());
                city=city.substring(2,4);
                window.location.href='workbench/SearchPhone.do/'+city;
            });

            //跳转到主页面
            $(".tototoIndex").click(function (){
                window.location.href='workbench/toMain.do'
            });

            $('.help-worker-box').click(function () {
                var city=$.trim($("#locationTxt").text());
                city=city.substring(2,4);
                window.location.href='workbench/feedBack.do/'+city;
            });
        });
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
                <a href="help.jsp">客户服务</a>
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
            <li class="login-signup" id="isLogin"> </li>
        </ul>
    </div>
    <!-- 搜索框 -->
    <div class="search">
        <div class="search-body">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="手机壳">
                <span class="input-group-btn">
                	<a id="searchA">
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
    <!-- 导航栏 -->
	<div class="search-nav">
		<div class="search-nav-container search-nav-container-90">
			<ul>
                <li>所有宝贝</li>
                <li><a class="tototoIndex">天猫</a></li>
                <li><a class="tototoIndex">二手</a></li>
			</ul>
		</div>
	</div>
	<!-- 支付提示 -->
	<div class="help-box">
		<div class="help-worker-row">
            <div class="help-worker-box">
                <div class="help-worker-head head-wechat">
                    <i class="fa fa-weixin"></i>
                </div>
                <div class="help-worker-detail">
                    <div class="help-worker-title">
                        <p>微信客服</p>
                    </div>
                    <div class="help-worker-link">
                        <p>ZZU商城客服006</p>
                    </div>
                </div>
            </div>
            <div class="help-worker-box">
                <div class="help-worker-head head-qq">
                    <i class="fa fa-qq"></i>
                </div>
                <div class="help-worker-detail">
                    <div class="help-worker-title">
                        <p>QQ客服</p>
                    </div>
                    <div class="help-worker-link">
                        <p>ZZU商城客服008</p>
                    </div>
                </div>
            </div>
            <div class="help-worker-box">
                <div class="help-worker-head head-weibo">
                    <i class="fa fa-weibo"></i>
                </div>
                <div class="help-worker-detail">
                    <div class="help-worker-title">
                        <p>微博客服</p>
                    </div>
                    <div class="help-worker-link">
                        <p>ZZU商城客服009</p>
                    </div>
                </div>
            </div>
            <div class="help-worker-box">
                <div class="help-worker-head head-facebook">
                    <i class="fa fa-facebook-square"></i>
                </div>
                <div class="help-worker-detail">
                    <div class="help-worker-title">
                        <p>facebook &emsp;客服</p>
                    </div>
                    <div class="help-worker-link">
                        <p>ZZU商城客服0099</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="help-worker-row">
            <div class="help-worker-box">
                <div class="help-worker-head head-wechat">
                    <i class="fa fa-weixin"></i>
                </div>
                <div class="help-worker-detail">
                    <div class="help-worker-title">
                        <p>微信客服</p>
                    </div>
                    <div class="help-worker-link">
                        <p>ZZU商城客服0066</p>
                    </div>
                </div>
            </div>
            <div class="help-worker-box">
                <div class="help-worker-head head-qq">
                    <i class="fa fa-qq"></i>
                </div>
                <div class="help-worker-detail">
                    <div class="help-worker-title">
                        <p>QQ客服</p>
                    </div>
                    <div class="help-worker-link">
                        <p>ZZU商城客服0058</p>
                    </div>
                </div>
            </div>
            <div class="help-worker-box">
                <div class="help-worker-head head-weibo">
                    <i class="fa fa-weibo"></i>
                </div>
                <div class="help-worker-detail">
                    <div class="help-worker-title">
                        <p>微博客服</p>
                    </div>
                    <div class="help-worker-link">
                        <p>ZZU商城客服0098</p>
                    </div>
                </div>
            </div>
            <div class="help-worker-box">
                <div class="help-worker-head head-facebook">
                    <i class="fa fa-facebook-square"></i>
                </div>
                <div class="help-worker-detail">
                    <div class="help-worker-title">
                        <p>facebook &emsp;客服</p>
                    </div>
                    <div class="help-worker-link">
                        <p>ZZU商城客服00995</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="help-worker-row">
            <div class="help-worker-box">
                <div class="help-worker-head head-wechat">
                    <i class="fa fa-weixin"></i>
                </div>
                <div class="help-worker-detail">
                    <div class="help-worker-title">
                        <p>微信客服</p>
                    </div>
                    <div class="help-worker-link">
                        <p>ZZU商城客服0063</p>
                    </div>
                </div>
            </div>
            <div class="help-worker-box">
                <div class="help-worker-head head-qq">
                    <i class="fa fa-qq"></i>
                </div>
                <div class="help-worker-detail">
                    <div class="help-worker-title">
                        <p>QQ客服</p>
                    </div>
                    <div class="help-worker-link">
                        <p>ZZU商城客服0084</p>
                    </div>
                </div>
            </div>
            <div class="help-worker-box">
                <div class="help-worker-head head-weibo">
                    <i class="fa fa-weibo"></i>
                </div>
                <div class="help-worker-detail">
                    <div class="help-worker-title">
                        <p>微博客服</p>
                    </div>
                    <div class="help-worker-link">
                        <p>ZZU商城客服0095</p>
                    </div>
                </div>
            </div>
            <div class="help-worker-box">
                <div class="help-worker-head head-facebook">
                    <i class="fa fa-facebook-square"></i>
                </div>
                <div class="help-worker-detail">
                    <div class="help-worker-title">
                        <p>facebook &emsp;客服</p>
                    </div>
                    <div class="help-worker-link">
                        <p>ZZU商城客服0096</p>
                    </div>
                </div>
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
                <p>Copyright © 2022 BY ZZU商城客服 田双标 ， Dddwaiting 丁毅</p>
            </div>
        </div>
    </footer>
</body>

</html>