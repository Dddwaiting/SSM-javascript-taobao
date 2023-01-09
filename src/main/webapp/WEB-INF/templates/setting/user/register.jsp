<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String bath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<html>
<head>
	<base href="<%=bath%>">
	<meta charset="UTF-8">
	<title>注册</title>

	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/qweather-icons@1.1.1/font/qweather-icons.css">
	<link rel="stylesheet" href="css/bootstrap.css" />
	<link rel="stylesheet" href="css/login.css" />
	<link rel="stylesheet" href="css/mall.css">
	<link rel="stylesheet" href="css/base.css">
	<script src="js/jquery.js"></script>
	<script type="text/javascript" src="jquery/jquery-1.11.1-min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
    <style type="text/css">
		body{background-image: url("./img/background.jpg");}
		</style>


	</head>

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
				str=str+'亲, 请<a href="workbench/totoLogin.do">登录 </a><span class="text-color-red"><a href="setting/user/toRegister.do">免费注册 &emsp;</a></span><span class="text-color-red"><a href="setting/user/toLogin.do">手机逛淘宝</a></span><span class="text-color-red"><a href="setting/user/toLogin.do">网页无障碍&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></span><span class="text-color-red"><a href="setting/user/toLogin.do">淘宝网首页</a></span>'
			}else{
				str=str+'<img src="//wwc.alicdn.com/avatar/getAvatar.do?userNick=tb672198045&amp;width=80&amp;height=80&amp;type=sns" width="25" height="25" id="toPeopleImg" alt="${sessionScope.sessionUser.username}的头像">'+'${sessionScope.sessionUser.loginName} 已登录';
			}
			$("#isLogin").html(str);

			$("#exitSystemA").click(function (){
				window.location.href='setting/exit'
			});

			$("#registerBtn").click(function (){
				//收集参数
				var userName=$.trim($("#userNameTxt").val());
				var password=$.trim($("#passwordTxt").val());
				if(userName==""){
					alert("用户名不能为空");
					return;
				}
				if(password==""){
					alert("密码不能为空");
					return;
				}
				$.ajax({
					url:'setting/user/insertUser.do',
					data:{
						userName:userName,
						password:password
					},
					dataType:'json',
					type:'post',
					success:function (data){
						if(data.code=="1"){
							alert(data.message);
							window.location.href='workbench/totoLogin.do';
						}else{
							alert(data.message);
						}
					}
				});
			});
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
			<li><a href="#">联系客服</a> <span class="glyphicon glyphicon-menu-down"></span></li>
			<li class="login-signup nav-pull-down myPeople" id="ToCustomer">
			<li><a href="#">千牛卖家中心</a></li>
			<li><a id="helpA">免费开店</a></li>
			<li><a href="#">收藏夹</a></li>
			<li><a href="#">购物车</a></li>
			<li class="nav-pull-down my-shop"><a href="#">我的淘宝</a> <span class="glyphicon glyphicon-menu-down"></span></li>
			<li class="login-signup nav-pull-down myPeople" id="isLogin">

				<%--你好,请<a href="workbench/totoLogin.do">登录 </a><span class="text-color-red"><a href="signup.html">免费注册</a></span>--%>
			</li>
		</ul>
	</div>



	</div>

		<div id="login">
			<div id="top">
				<span>用户注册</span>
			</div>
			<div id="bottom">
				<form  role="form">
					<table border="0px" id="table">
						<tr>
							<td class="td1">手机号码：</td>
							<td><input id="userNameTxt" type="text" placeholder="Username" class="td2" name="myname"></td>
						</tr>
						<tr>
							<td></td>
							<td><span id="nameerr"></span></td>
						</tr>
						<tr>
							<td class="td1">密码：</td>
							<td><input id="passwordTxt" type="password" placeholder="Password" class="td2" name="mypwd"></td>
						</tr>
						<tr>
							<td></td>
							<td><span id="pwderr"></span></td>
						</tr>
						<tr>
							<td></td>

							<td>

								<input id="registerBtn" type="button" value="注册" class="td3">
								<input type="reset" value="取消" class="td3	">
							</td>

						</tr>

					</table><label>
					<input type="checkbox" id="loginCheck">已阅读并同意以下协议<a href="http://page.1688.com/shtml/about/ali_group1.shtml">淘宝平台服务协议、隐私权政策、法律声明、支付宝及客户端服务协议</a>
				</label>
				</form>
			</div>

		</div>
	<div class="footer">

		<div class="footer-hd">
			<p>
				<a href="http://page.1688.com/shtml/about/ali_group1.shtml">阿里巴巴集团</a>
				<b>|</b>
				<a href="http://www.alibaba.com">阿里巴巴国际站</a>
				<b>|</b>
				<a href="http://www.1688.com">阿里巴巴中国站</a>
				<b>|</b>
				<a href="http://www.aliexpress.com">全球速卖通</a>
				<b>|</b>
				<a href="http://www.taobao.com">淘宝网</a>
				<b>|</b>
				<a href="http://www.tmall.com">天猫</a>
				<b>|</b>
				<a href="http://ju.taobao.com">聚划算</a>
				<b>|</b>
				<a href="http://www.etao.com">一淘</a>
				<b>|</b>
				<a href="http://www.alimama.com">阿里妈妈</a>
				<b>|</b>
				<a href="https://www.fliggy.com">飞猪</a>
				<b>|</b>
				<a href="http://www.xiami.com">虾米</a>
				<b>|</b>
				<a href="http://www.aliyun.com">阿里云计算</a>
				<b>|</b>
				<a href="http://www.yunos.com">云OS</a>
				<b>|</b>
				<a href="https://wanwang.aliyun.com">万网</a>
				<b>|</b>
				<a href="http://www.alipay.com">支付宝</a>
			</p>
		</div>
		<div class="footer-bd">
			<p>
				<span><a href="https://huodong.taobao.com/wow/tbhome/act/about-home" rel="noopener noreferrer">关于淘宝</a></span><span><a href="https://www.taobao.com/tbhome/page/about/partner?spm=a21bo.9614792.102.5.ed410c5siU20Y" rel="noopener noreferrer">合作伙伴</a></span><span><a href="http://pro.taobao.com" rel="noopener noreferrer">营销中心</a></span><span><a href="http://jubao.alibaba.com/internet/readme.htm?site=taobao" rel="noopener noreferrer">廉正举报</a></span><span><a href="https://consumerservice.taobao.com/" rel="noopener noreferrer">联系客服</a></span><span><a href="http://open.taobao.com" rel="noopener noreferrer">开放平台</a></span><span><a href="http://www.taobao.com/about/join.php" rel="noopener noreferrer">诚征英才</a></span><span><a href="http://consumerservice.taobao.com/contact-us" rel="noopener noreferrer">联系我们</a></span><span><a href="https://www.taobao.com/tbhome/page/sitemap" rel="noopener noreferrer">网站地图</a></span><span><a href="https://terms.alicdn.com/legal-agreement/terms/suit_bu1_taobao/suit_bu1_taobao201703241622_61002.html" rel="noopener noreferrer">隐私权政策</a></span><span><a href="https://terms.alicdn.com/legal-agreement/terms/suit_bu1_taobao/suit_bu1_taobao201811121436_80276.html" rel="noopener noreferrer">法律声明</a></span><span><a href="http://ipp.alibabagroup.com/" rel="noopener noreferrer">知识产权</a></span>
				<b>|</b> <em>&copy; 2003-现在 Taobao.com 版权所有</em>
			</p>
			<p><span>增值电信业务经营许可证：浙B2-20080224</span><b>|</b><span>增值电信业务经营许可证（跨地区）： B2-20150210</span><b>|</b><span>浙网文（2019）1033-086号</span><b>|</b><span>浙江省网络食品销售第三方平台提供者备案：浙网食A33010001</span></p><p><span>互联网药品信息服务资格证书（浙）-经营性-2018-0010</span><b>|</b><span>短消息类服务接入代码使用证书：号【2016】00154-A01</span><b>|</b><span>信息网络传播视听许可证：1109364号</span><b>|</b><span>出版物网络交易平台服务经营备案号：新出发浙备字第002号</span></p><p><span>
            <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=33010002000078" rel="noopener noreferrer">
              <span class="tb-footer-mod" style="background-position:-861px 0px; width:20px; height: 20px; "></span>
              浙公网安备 33010002000078号</a></span><b>|</b><span><a href="http://beian.miit.gov.cn" rel="noopener
            noreferrer">浙B2-20080224-1</a></span><b>|</b><span>广播电视节目制作经营许可证（浙）字第01012号</span><b>|</b><span>市场名称登记证：工商网市字3301004120号</span><b>|</b><span>医疗器械网络交易服务第三方平台备案：（浙）网械平台备字[2018]第00004号</span></p>
		</div>
	</div>
	</div>
	</body>
</html>
