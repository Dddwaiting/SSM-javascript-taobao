
<%--
    Created by IntelliJ IDEA.
    User: dddwaiting
Date: 2023/1/6
Time: 16:17
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String bath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<html>
<head>
    <base href="<%=bath%>">
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <meta name="keywo rds" content="淘宝" />
    <meta name="description" content="淘宝是一个大型的购物网站" />
    <title>淘宝网-淘！我喜欢</title>
    <link rel="stylesheet" type="text/css" href="css/base.css">
    <script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="jquery/bootstrap_3.3.0/js/bootstrap.min.js"></script>

    <script>
        $(document).ready(function (){
            //为登录添加回车按钮
            //keydown中的参数代表发生事件所有基本信息的封装
            $(window).keydown(function (e){
                //e.keyCode代表按下是哪一个键
                if(e.keyCode==13){
                    //如果事件中有function{}则为当前选择器添加一个事件
                    //如果事件中没有function{}则发送一次模拟信号。因为#loginBtn已经设置了click事件
                    $("#loginBtn").click();
                }
            });

            //发送登录请求
            $("#loginBtn").click(function (){
                //收集参数
                var userName=$("#username").val();
                var password=$("#passwd").val();
                var isRemember=$("#isRemember").prop("checked");
                if(userName==""){
                    alert("用户名不能为空");
                    return;
                }
                if(password==""){
                    alert("密码不能为空");
                    return;
                }
                $.ajax({
                    url:'setting/user/login.do',
                    data:{
                        userName:userName,
                        password:password,
                        isRemember:isRemember
                    },
                    type:'post',
                    dataType:'json',
                    success:function (data){
                        if(data.code=="1"){
                            window.location.href='workbench/toMain.do';
                        }else{
                            alert(data.message);
                        }
                    },
                    beforeSend:function (data){
                        $("#msg").text("正在验证...");
                        return true;
                    }
                });
            });
        });
    </script>
</head>

<body>
<script>
    $(document).ready(function(){
        $("#username").focus();
    })
</script>

<div class="taobaoBox">
    <!--header-->
    <div class="header">
        <div class="headerContainer">
            <a href="#"><img src="img/taobaologo.png" /></a>
            <a href="#" class="advice"><img src="img/message.png">"登录界面"改进建议</a>
        </div>
    </div>

    <!--ad-->
    <div class="ad">
        <div class="box">
            <div class="container">
                <div class="tips1">
                    密码登录  短信登录
                </div>
                <div class="form">
                    <div class="userbox">
                        <label for="username"></label>

                        <input  id="username" type="text" value="" placeholder="账号名/邮箱/手机号">
                        <!--  <span class="usertips" id="username">会员名/邮箱/手机号</span> -->
                    </div>

                    <div class="passwdbox">
                        <label for="passwd"></label>

                        <input  id="passwd" type="password" value="" placeholder="请输入登录密码">
                    </div>

                    <div class="submitbox">
                        <label>
                            <input type="checkbox" id="loginCheck"> 十天内免登录
                        </label>
                        <%--<input type="button" id="loginBtn" class="btn btn-primary btn-lg btn-block" value="登录">--%>
                        <button id="loginBtn" class="btn btn-primary btn-lg btn-block">登录</button>

                    </div>

                    <div class="loginbox">

                        <a href="#" class="sina"><img src="img/weibo.png">&nbsp;微博登录</a>
                        <a href="#" class="alipay"><img src="img/alipay.png">&nbsp;支付宝登录</a>

                    </div>
                    <div class="forget-register">
                        <a href="#" class="register">免费注册</a>
                        <a href="#" class="forget">忘记密码</a>
                    </div>
                </div>
            </div>
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