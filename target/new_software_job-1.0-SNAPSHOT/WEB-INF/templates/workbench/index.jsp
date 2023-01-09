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
	<title>ZZU商城- 淘！我喜欢</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/qweather-icons@1.1.1/font/qweather-icons.css">
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="css/mall.css">
	<script>
		$(document).ready(function (){
			var location=$("#locationNow").attr("key");
			getWeather(location);

			//改变城市变化
			$(".city-item").click(function (){
				var city=$(this).text();
				$("#locationNow").html(" "+city);
				//获取其他城市的location值
				var newLocation=$(this).attr("key");
				getWeather(newLocation);
			});

			var str='';
			if('${sessionScope.sessionUser}'==''){
				str=str+'亲, 请<a href="workbench/totoLogin.do">登录 </a><span class="text-color-red"><a href="setting/user/toRegister.do">免费注册</a></span>'
			}else{
				str=str+'<img src="//wwc.alicdn.com/avatar/getAvatar.do?userNick=tb672198045&amp;width=80&amp;height=80&amp;type=sns" width="25" height="25" id="toPeopleImg" alt="${sessionScope.sessionUser.username}的头像">'+'${sessionScope.sessionUser.loginName} 已登录';
				$("#a_login").text("${sessionScope.sessionUser.loginName}"+"已登录");
			}
			$("#isLogin").html(str);

			$("#exitSystemA").click(function (){
				window.location.href='setting/exit'
			});

			//鼠标经过限时秒杀商品时向上移动
			$('.seckill-item').hover(
				function(){
					//经过商品的时候，将商品的边框显示为红色
					$(this).css({border:"1px solid red"});
					$(this).children('.seckill-item-img').children('img').animate({
						'margin-top':'0px'
					},380);

				},
				function(){
					$(this).css({border:"0px solid blue"});
					$(this).children('.seckill-item-img').children('img').animate({
						'margin-top':'8px'
					},380);
				});

			//鼠标滑动商品向左滑
			$('.item-big-img,.item-content-bottom-img').hover(
				function(){
					//经过商品的时候，将商品的边框显示为红色
					$(this).css({border:"1px solid red"});
					$(this).children('img').animate({
						'margin-left':'-8px'
					},380);
				},
				function(){
					$(this).css({border:"0px solid blue"});
					$(this).children('img').animate({
						'margin-left':'0px'
					},380);
				});

			//鼠标放在四个框商品时图片向左滑
			$('.item-four-detail').hover(
				function(){
					$(this).children('.item-four-detail-img').children('img').animate({
						'margin-left':'-8px'
					},380);
				},
				function(){
					$(this).children('.item-four-detail-img').children('img').animate({
						'margin-left':'0px'
					},380);
				});

			//为搜索按钮添加单击事件
			$("#searchA").click(function (){
				var city=$.trim($("#locationNow").text());
				window.location.href='workbench/SearchPhone.do/'+city;
			});

			//为客户服务添加单击事件
			$("#helpA").click(function (){
				var city=$.trim($("#locationNow").text());
				window.location.href='workbench/help.do/'+city;
			});

			$("#isLogin").on("click"," img",function (){
				window.location.href='workbench/toPeoPle.do';
			})

		});
		function getWeather(location){
			var result="error"
			$.ajax({
				url:'https://devapi.qweather.com/v7/weather/now',
				data:{
					location:location,
					key:'368204114eea4b86825ef23a7d022b95'
				},
				dataType:'json',
				type:'get',
				async:false,
				success:function (data){
					var now=data.now;
					//设置天气图标
					$("#icon").removeClass();
					$("#icon").addClass("qi-"+now.icon);
					//设置温度
					$("#tmp").text(now.temp);
					//设置天气状态
					$("#howWeather").text(now.text);
				}
			});
			return result;
		}
	</script>
</head>
<body>
	<!-- 顶部导航条 -->
	<div class="nav">
		<ul>
			<li class="nav-pull-down location" >
				<img src="img/icon_location.png">
				<span id="locationNow" key="101150304"> 河南</span>
				<i class="qi-101" id="icon"></i>
				<span id="tmp">0</span>°C
				<span id="howWeather">UnKnown</span>
				<span class="glyphicon glyphicon-menu-down"></span>
			</li>
			<li><a id="exitSystemA">退出系统</a></li>
			<li><a id="helpA">联系客服</a> <span class="glyphicon glyphicon-menu-down"></span></li>
			<li class="login-signup nav-pull-down myPeople" id="ToCustomer">
			<li><a href="#">千牛卖家中心</a></li>
			<li><a href="#">免费开店</a></li>
			<li class="nav-pull-down connect"><a href="#">收藏夹</a> <span class="glyphicon glyphicon-menu-down"></span></li>
			<li><a href="#">购物车</a></li>
			<li class="nav-pull-down my-shop"><a href="#">我的淘宝</a> <span class="glyphicon glyphicon-menu-down"></span></li>
			<li class="login-signup nav-pull-down myPeople" id="isLogin">

				<%--你好,请<a href="workbench/totoLogin.do">登录 </a><span class="text-color-red"><a href="signup.html">免费注册</a></span>--%>
			</li>
		</ul>
	</div>
	<!-- 内容主题 -->
	<div class="container">
		<!-- 搜索框 -->
		<div class="search">
			<div class="search-body">
				<div class="input-group">
			      <input type="text" class="form-control" placeholder="手机壳">
			      <span class="input-group-btn">
			        <a id="searchA"><button class="btn btn-danger btn-search" type="button" id="searchBtn"><i class="fa fa-search"></i></button></a>
			      </span>

			    </div>
				<!-- 个人设置-->

			    <div class="search-keyword">
			    	<p>新款连衣裙 四件套 潮流T恤 时尚女鞋 短裤 半身裙 男士外套 新款男鞋</p>
			    </div>
			</div>
		</div>
		<!-- 横向导航 -->
		<div class="nav-item">
			<ul>
				<li><a href="#">天猫</a></li>
				<li><a href="#">聚划算</a></li>
				<li><a href="#">超市</a></li>
				<li><a href="#">拍卖</a></li>
				<li><a href="#">飞猪旅行</a></li>
				<li><a href="#">天天特卖</a></li>
				<li><a href="#">极有家</a></li>
				<li><a href="#">淘宝直播</a></li>
			</ul>
		</div>
		<div class="nav-body">
			<!-- 侧边导航 -->
			<div class="nav-side">
				<ul>
				    <li><span class="nav-side-item">分类</span></li>
				    <li><span class="nav-side-item">女装</span> / <span class="nav-side-item">内衣</span> / <span class="nav-side-item">奢品</span></li>
				    <li><span class="nav-side-item">女鞋</span> / <span class="nav-side-item">男鞋</span> / <span class="nav-side-item">箱包</span></li>
				    <li><span class="nav-side-item">美妆</span> / <span class="nav-side-item">饰品</span> / <span class="nav-side-item">洗护</span></li>
				    <li><span class="nav-side-item">男装</span> / <span class="nav-side-item">运动</span> / <span class="nav-side-item">百货</span></li>
				    <li><span class="nav-side-item">手机</span> / <span class="nav-side-item">数码</span> / <span class="nav-side-item">企业礼品</span></li>
				    <li><span class="nav-side-item">家装</span> / <span class="nav-side-item">电器</span> / <span class="nav-side-item">车品</span></li>
				    <li><span class="nav-side-item">食品</span> / <span class="nav-side-item">生鲜</span> / <span class="nav-side-item">母婴</span></li>
				    <li><span class="nav-side-item">医药</span> / <span class="nav-side-item">保健</span> / <span class="nav-side-item">进口</span></li>

				</ul>
			</div>
			<div class="nav-content">
				<!-- 幻灯片 -->
				<div class="slide">
					<img class="carousel_img" src="img/6.jpg" name="1">
					<img class="carousel_img" src="img/2.jpg" name="2">
					<img class="carousel_img" src="img/7.jpg" name="3">
					<img class="carousel_img" src="img/4.jpg" name="4">
					<img class="carousel_img" src="img/5.jpg" name="5">
					<div class="icon">
						<i name="1" class="fa fa-circle"></i>
						<i name="2" class="fa fa-circle"></i>
						<i name="3" class="fa fa-circle"></i>
						<i name="4" class="fa fa-circle"></i>
						<i name="5" class="fa fa-circle"></i>
					</div>
					<div class="prev prevNext" onclick="PrevNextClick(1)"> <span class="glyphicon glyphicon-menu-left"></span> </div>
					<div class="next prevNext" onclick="PrevNextClick(2)"> <span class="glyphicon glyphicon-menu-right"></span> </div>
				</div>

			</div>
			<!-- 个人设置-->
			<div class="peopleSet">
				<div >
					<img  style="float: right;" src="img/code.png" width="80" height="80" >

				</div>
			</div>
			<div class="peopleSet">
				<div>
					<img src="//wwc.alicdn.com/avatar/getAvatar.do?userNick=tb672198045&amp;width=80&amp;height=80&amp;type=sns" width="80" height="80" alt="tb672198045的头像"><a href="workbench/totoLogin.do"></a>
				</div>
			</div>
			<br>
			<div class="peopleSettext">

				<button style="  border: none;background-color: #ffa500;" id="setting" ><a href="workbench/totoLogin.do" id="a_login">登录</a></button>
				<button style=" border: none; background-color: #ffa500;" id="exit" ><a href="setting/user/toRegister.do">注册</a></button>
				<button style="  border: none;background-color: #ffa500;" id="openshop" >开店</button>

			</div>
            <br>
			<br>
			<div class="peopleSettext">
				<button style="  border: none;background-color: #ffa500;" id="bbsc" >宝贝收藏</button>
				<button style="  border: none;background-color: #ffa500;" id="mgdd" >买过的店</button>
				<button style="  border: none;background-color: #ffa500;" id="sddd" >收藏的店</button>
				<button style="  border: none;background-color: #ffa500;" id="wdzj" >我的足迹</button>
			</div>
		</div>


		<!-- 商品显示区域 -->
		<div class="content">
			<!-- 猜你喜欢 -->
			<div class="seckill">
				<!-- 头部 -->
				<div class="seckill-head">
					<div class="seckill-icon">
						<img src="img/clock.png">
					</div>
					<div class="seckill-text">
						<span class="seckill-title">猜你喜欢</span>
						<span class="seckill-remarks">个性推荐</span>
					</div>

				</div>
				<!-- 内容 -->
				<div class="seckill-content">
					<div class="seckill-item">
					<div class="seckill-item-img">
						<img src="img/seckill-item6.jpg">
					</div>
					<div class="seckill-item-info">
						<p>苹果8/7手机壳iPhone7 Plus保护壳全包防摔磨砂硬外壳</p>
						<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">29</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>45.9</s></p>
					</div>
				</div>

					<div class="seckill-item">
						<div class="seckill-item-img">
							<img src="img/seckill-item7.jpg">
						</div>
						<div class="seckill-item-info">
							<p>北美红雀冬青浆果欧式陶瓷餐具汤锅汤碗汤盆手绘浮雕彩绘带盖耐热</p>
							<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">99.9</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>169.9</s></p>
						</div>
					</div>

					<div class="seckill-item">
						<div class="seckill-item-img">
							<img src="img/seckill-item8.jpg">
						</div>
						<div class="seckill-item-info">
							<p>结婚酒盅婚庆用品 大红色双喜 喜庆敬酒杯 交杯酒杯 陶瓷小号杯</p>
							<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">9.9</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>29.2</s></p>
						</div>
					</div>

					<div class="seckill-item">
						<div class="seckill-item-img">
							<img src="img/seckill-item9.jpg">
						</div>
						<div class="seckill-item-info">
							<p>铁艺支架折叠脏衣篓洗衣篮大号棉麻防水脏衣篮玩具衣物家居收纳筐</p>
							<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">19.8</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>36.0</s></p>
						</div>
					</div>

					<div class="seckill-item">
						<div class="seckill-item-img">
							<img src="img/seckill-item10.jpg">
						</div>
						<div class="seckill-item-info">
							<p>自酿泡酒玻璃瓶青梅酒樱桃酒杨梅酒果酒果汁分装瓶小空瓶子密封罐</p>
							<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">12.9</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>23.0</s></p>
						</div>
					</div>

					<div class="seckill-item">
						<div class="seckill-item-img">
							<img src="img/seckill-item101.jpg">
						</div>
						<div class="seckill-item-info">
							<p>不锈钢煎蛋模具神器煎鸡蛋DIY模型煎蛋器爱心形荷包蛋饭团磨具套</p>
							<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">49.9</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>109.0</s></p>
						</div>
					</div>

					<div class="seckill-item">
						<div class="seckill-item-img">
							<img src="img/seckill-item12.jpg">
						</div>
						<div class="seckill-item-info">
							<p>日本捞饺子大漏勺厨房长柄捞面条勺子家用火锅麻辣烫沥水捞勺滤网</p>
							<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">9.9</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>19.8</s></p>
						</div>
					</div>
					<div class="seckill-item">
						<div class="seckill-item-img">
							<img src="img/seckill-item1.jpg">
						</div>
						<div class="seckill-item-info">
							<p>不锈钢煎蛋模具神器煎鸡蛋DIY模型煎蛋器爱心形荷包蛋饭团磨具套【赠小风扇】维他 柠檬茶250ml*32盒 礼品装 整箱</p>
							<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">71.9</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>89.6</s></p>
						</div>
					</div>
					<div class="seckill-item">
						<div class="seckill-item-img">
							<img src="img/seckill-item2.jpg">
						</div>
						<div class="seckill-item-info">
							<p>Kindle Paperwhite 全新升级版6英寸护眼非反光电子墨水</p>
							<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">989.5</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>1299.9</s></p>
						</div>
					</div>
					<div class="seckill-item">
						<div class="seckill-item-img">
							<img src="img/seckill-item3.jpg">
						</div>
						<div class="seckill-item-info">
							<p>粮悦 大吃兄糯米锅巴 安徽特产锅巴糯米原味400g*2盒</p>
							<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">21.8</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>49.9</s></p>
						</div>
					</div>

					<div class="seckill-item">
						<div class="seckill-item-img">
							<img src="img/seckill-item4.jpg">
						</div>
						<div class="seckill-item-info">
							<p>【天猫超市】清风（APP）抽纸 原木纯品金装系列 3层</p>
							<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">49.9</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>109.9</s></p>
						</div>
					</div>

					<div class="seckill-item">
						<div class="seckill-item-img">
							<img src="img/seckill-item5.jpg">
						</div>
						<div class="seckill-item-info">
							<p>NIKE耐克 男子休闲鞋 AIR MAX 90 ESSENTIAL 气垫</p>
							<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">559</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>798.9</s></p>
						</div>
					</div>



					<div class="seckill-item">
						<div class="seckill-item-img">
							<img src="img/seckill-item13.jpg">
						</div>
						<div class="seckill-item-info">
							<p>莫语 日式ins风简约白色陶瓷餐盘西餐盘子 椭圆形鱼盘餐具 阿莫玲</p>
							<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">23.5</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>29.5</s></p>
						</div>
					</div>

					<div class="seckill-item">
						<div class="seckill-item-img">
							<img src="img/seckill-item14.jpg">
						</div>
						<div class="seckill-item-info">
							<p>台湾仙德曼焖烧锅316不锈钢家用焖烧神器大容量闷烧保温锅提锅</p>
							<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">549.9</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>609.0</s></p>
						</div>
					</div>

					<div class="seckill-item">
						<div class="seckill-item-img">
							<img src="img/seckill-item15.jpg">
						</div>
						<div class="seckill-item-info">
							<p>特大号粗管脏衣服收纳篮脏衣篓家用洗衣仿藤编篮子装放衣物筐神器</p>
							<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">19.8</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>29.0</s></p>
						</div>
					</div>

					<div class="seckill-item">
						<div class="seckill-item-img">
							<img src="img/seckill-item16.jpg">
						</div>
						<div class="seckill-item-info">
							<p>沙拉加厚加深不锈钢大盆大号洗澡盆家用深盆洗被盆圆形不锈钢盆洗</p>
							<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">20.9</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>28.0</s></p>
						</div>
					</div>

					<div class="seckill-item">
						<div class="seckill-item-img">
							<img src="img/seckill-item17.jpg">
						</div>
						<div class="seckill-item-info">
							<p>木果盘果盆创意家用木质干果盘实木果篮客厅木制根雕大水果盘包邮</p>
							<p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">33.0</span><i class="fa fa-rmb"></i><span class="seckill-old-price"></span><s>98.0</s></p>
						</div>
					</div>

				</div>
			</div>
			


				</div>

			</div>
		</div>
	</div>
	<!-- 清除浮动 -->
	<div class="clearfix"></div>
	<!-- 底部 -->
	<div class="footer">
	</div>


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
			<div class="friend-link">
				<div class="friend-link-item">
					<ul>
						<br>
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
	</div>
	</div>
	<!-- 页面上的各种浮窗 -->
	<!-- 地理位置 -->
	<div class="city" id="cityList">
		<p>
			<span class="city-item" key="101010100">北京 </span>
			<span class="city-item" key="101020100">上海 </span>
			<span class="city-item" key="101030100">天津 </span>
			<span class="city-item" key="101040100">重庆 </span>
			<span class="city-item" key="101031600">河北 </span>
		</p>	
		<p>
			<span class="city-item" key="101150304">河南 </span>
			<span class="city-item" key="101130101">新疆 </span>
			<span class="city-item" key="101150304">河南 </span>
			<span class="city-item" key="101060201">吉林 </span>
			<span class="city-item" key="101190101">江苏 </span>
		</p>
		<p>
			<span class="city-item" key="101230101">福建 </span>
			<span class="city-item" key="101200101">湖北 </span>
			<span class="city-item" key="101250101">湖南 </span>
			<span class="city-item" key="101280101">广东 </span>
			<span class="city-item" key="101300501">广西 </span>
		</p>
		<p>
			<span class="city-item" key="101200105">江西 </span>
			<span class="city-item" key="101270101">四川 </span>
			<span class="city-item" key="101150402">海南 </span>
			<span class="city-item" key="101260101">贵州</span>
			<span class="city-item" key="101290101">云南</span>
		</p>
		<p>
			<span class="city-item" key="101280601">深圳</span>
			<span class="city-item" key="101121009">陕西</span>
			<span class="city-item" key="101160101">甘肃</span>
			<span class="city-item" key="101150607">青海</span>
			<span class="city-item" key="101250102">宁夏</span>
		</p>
	</div>

	<!-- 个人设置-->
	<!--<div class="peopleSet">
		<div>
			<a id="setting"><small>帐号管理</small></a>
			<a id="exit"><small>退出</small></a>
		</div>
		<div>
			<img src="//wwc.alicdn.com/avatar/getAvatar.do?userNick=tb672198045&amp;width=80&amp;height=80&amp;type=sns" width="80" height="80" alt="tb672198045的头像">
		</div>
	</div>-->


	<!-- 我的淘宝 -->
	<div class="my-shop-panel">
		<p>
			<span class="my-item">已买到的宝贝</span>
		</p>
		<p>
			<span class="my-item">我的足迹</span>
		</p>
	</div>


	<!-- 显示详细商品分类菜单 -->
	<!-- 暂时先用两个面板显示商品分类详情 -->
	<div class="detail-item-panel panel-1">
		<div class="nav-detail-item">
			<span>清洁用品 > </span>
			<span>美妆商城 > </span>
			<span>美妆馆 > </span>
			<span>妆比社 > </span>
			<span>全球购美妆 > </span>
			<span>宠物馆 > </span>
		</div>
		<ul>
			<li>
				<span class="detail-item-title">面部护肤 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">补水保湿</span>
			    <span class="detail-item">卸妆</span>
			    <span class="detail-item">洁面</span>
			    <span class="detail-item">爽肤水</span>
			    <span class="detail-item">乳液面霜</span>
			    <span class="detail-item">精华</span>
			    <span class="detail-item">眼霜</span>
			    <span class="detail-item">防晒</span>
			    <span class="detail-item">面膜</span>
			    <span class="detail-item">剃须</span>
			    <span class="detail-item">套装</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">洗发护发 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">洗发</span>
			    <span class="detail-item">护发</span>
			    <span class="detail-item">染发</span>
			    <span class="detail-item">造型</span>
			    <span class="detail-item">假发</span>
			    <span class="detail-item">美发工具</span>
			    <span class="detail-item">套装</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">身体护理 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">补水保湿</span>
			    <span class="detail-item">沐浴</span>
			    <span class="detail-item">润肤</span>
			    <span class="detail-item">精油</span>
			    <span class="detail-item">颈部</span>
			    <span class="detail-item">手足</span>
			    <span class="detail-item">纤体塑形</span>
			    <span class="detail-item">美胸</span>
			    <span class="detail-item">套装</span>	
	    	</li>
	    	<li>
	    		<span class="detail-item-title">口腔护理 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">牙膏/牙粉</span>
			    <span class="detail-item">牙刷/牙线</span>
			    <span class="detail-item">漱口水</span>
			    <span class="detail-item">套装</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">女性护理 <span class="glyphicon glyphicon-menu-right"></span></span>
	    		<span class="detail-item">卫生巾</span>
			    <span class="detail-item">卫生护垫</span>
			    <span class="detail-item">私密护理</span>
			    <span class="detail-item">脱毛膏</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">香水彩妆 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">BB霜</span>
			    <span class="detail-item">化妆棉</span>
			    <span class="detail-item">女士香水</span>
			    <span class="detail-item">男士香水</span>
			    <span class="detail-item">底妆</span>
			    <span class="detail-item">眉笔</span>
			    <span class="detail-item">睫毛膏</span>
			    <span class="detail-item">眼线</span>
			    <span class="detail-item">眼影</span>
			    <span class="detail-item">唇膏/彩</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">清洁用品 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">纸品湿巾</span>
			    <span class="detail-item">衣物清洁</span>
			    <span class="detail-item">清洁工具</span>
			    <span class="detail-item">家庭清洁</span>
			    <span class="detail-item">一次性用品</span>
			    <span class="detail-item">驱虫用品</span>
			    <span class="detail-item">皮具护理</span>
	    	</li>

    	</ul>	
	</div>
	<div class="detail-item-panel panel-2">
		<div class="nav-detail-item">
			<span>赛事 > </span>
			<span>运动城 > </span>
			<span>户外馆 > </span>
			<span>健身房 > </span>
			<span>骑行馆 > </span>
			<span>钟表城 > </span>
		</div>
		<ul>
			<li>
				<span class="detail-item-title">2022新品 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">休闲鞋</span>
			    <span class="detail-item">商务休闲鞋</span>
			    <span class="detail-item">正装鞋</span>
			    <span class="detail-item">帆布鞋</span>
			    <span class="detail-item">凉鞋</span>
			    <span class="detail-item">拖鞋</span>
			    <span class="detail-item">功能鞋</span>
			    <span class="detail-item">增高鞋</span>
			    <span class="detail-item">工装鞋</span>
			    <span class="detail-item">雨鞋</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">运动鞋包 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">跑步鞋</span>
			    <span class="detail-item">休闲鞋</span>
			    <span class="detail-item">篮球鞋</span>
			    <span class="detail-item">帆布鞋</span>
			    <span class="detail-item">板鞋</span>
			    <span class="detail-item">拖鞋</span>
			    <span class="detail-item">运动包</span>
	    	</li>

	    	<li>
	    		<span class="detail-item-title">骑行运动 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">山地车</span>
			    <span class="detail-item">公路车</span>
			    <span class="detail-item">折叠车</span>
			    <span class="detail-item">骑行服</span>
			    <span class="detail-item">电动车</span>
			    <span class="detail-item">电动滑板车</span>
			    <span class="detail-item">城市自行车</span>
			    <span class="detail-item">平衡车</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">体育用品 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">乒乓球</span>
			    <span class="detail-item">羽毛球</span>
			    <span class="detail-item">篮球</span>
			    <span class="detail-item">足球</span>
			    <span class="detail-item">轮滑滑板</span>
			    <span class="detail-item">网球</span>
			    <span class="detail-item">高尔夫</span>
			    <span class="detail-item">台球</span>
			    <span class="detail-item">排球</span>
	    	</li>

	    	<li>
	    		<span class="detail-item-title">户外装备 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">背包</span>
			    <span class="detail-item">帐篷/垫子</span>
			    <span class="detail-item">望远镜</span>
			    <span class="detail-item">烧烤用具</span>
			    <span class="detail-item">便携桌椅床</span>
			    <span class="detail-item">户外配饰</span>
			    <span class="detail-item">军迷用品</span>
			    <span class="detail-item">野餐用品</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">垂钓用品 <span class="glyphicon glyphicon-menu-right"> </span></span>
			    <span class="detail-item">钓竿</span>
			    <span class="detail-item">鱼线</span>
			    <span class="detail-item">浮漂</span>
			    <span class="detail-item">鱼饵</span>
			    <span class="detail-item">钓鱼配件</span>
			    <span class="detail-item">渔具包</span>
			    <span class="detail-item">钓箱钓椅</span>
			    <span class="detail-item">鱼线轮</span>
			    <span class="detail-item">钓鱼灯</span>
	    	</li>
	    	<li>
	    		<span class="detail-item-title">游泳用品 <span class="glyphicon glyphicon-menu-right"></span></span>
			    <span class="detail-item">女士泳衣</span>
			    <span class="detail-item">比基尼</span>
			    <span class="detail-item">男士泳衣</span>
			    <span class="detail-item">泳镜</span>
			    <span class="detail-item">游泳圈</span>
			    <span class="detail-item">游泳包防水包</span>
			    <span class="detail-item">泳帽</span>
			    <span class="detail-item">游泳配件</span>
	    	</li>

    	</ul>	
	</div>
</body>
<script src="js/mall.js"></script>
</html>