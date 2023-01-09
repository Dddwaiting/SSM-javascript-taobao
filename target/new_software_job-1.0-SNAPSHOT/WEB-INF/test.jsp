<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String bath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<html>
<head>
    <base href="<%=bath%>">
    <meta charset="UTF-8">
    <meta name="keywo rds" content="淘宝" />
    <meta name="description" content="淘宝是一个大型的购物网站" />
    <title>淘宝网-淘！我喜欢</title>
    <link href="jquery/bootstrap_3.3.0/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="jquery/jquery-1.11.1-min.js"></script>

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
                var userName=$("#UserAct").val();
                var password=$("#UserPwd").val();
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
<div style="position: absolute; top: 0px; left: 0px; width: 60%;">
    <img src="img/IMG_7114.JPG" style="width: 100%; height: 90%; position: relative; top: 50px;">
</div>
<div id="top" style="height: 50px; background-color: #3C3C3C; width: 100%;">
    <div style="position: absolute; top: 5px; left: 0px; font-size: 30px; font-weight: 400; color: white; font-family: 'times new roman'">ZZU &nbsp;<span style="font-size: 12px;">&copy;2022 淘宝网</span></div>
</div>

<div style="position: absolute; top: 120px; right: 100px;width:450px;height:400px;border:1px solid #D5D5D5">
    <div style="position: absolute; top: 0px; right: 60px;">
        <div class="page-header">
            <h1>登录</h1>
        </div>
        <form action="workbench/index.html" class="form-horizontal" role="form">
            <div class="form-group form-group-lg">
                <div style="width: 350px;">
                    <!--<%--value中的cookie代表从cookie作用域寻找，Cookie_Act代表浏览器发送请求中的哪一个Cookie .value代表当前cookie对应的值--%>-->
                    <input class="form-control" id="UserAct" type="text" value="" placeholder="用户名">
                </div>
                <div style="width: 350px; position: relative;top: 20px;">
                    <input class="form-control" id="UserPwd" type="password" value="" placeholder="密码">
                </div>
                <div class="checkbox"  style="position: relative;top: 30px; left: 10px;">
                    <label>
                        <input type="checkbox" id="loginCheck"> 十天内免登录
                    </label>
                    &nbsp;&nbsp;<!--<%--设置登录颜色--%>-->
                    <span style="color: red" id="msg" ></span>
                </div>
                <!--<%--type类型的submit是同步请求，而type类型的button可以是异步请求--%>-->
                <button type="button" id="loginBtn" class="btn btn-primary btn-lg btn-block"  style="width: 350px; position: relative;top: 45px;">登录</button>
            </div>
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
    </div></div>
</body>
</html>

