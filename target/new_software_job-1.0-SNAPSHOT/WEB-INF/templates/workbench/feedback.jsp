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
    <title>用户反馈</title>
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

            $(".tototoIndex").click(function (){
                window.location.href='workbench/toMain.do'
            });

            $("#searchGoodsBtn").click(function (){
                var city=$.trim($("#locationTxt").text());
                city=city.substring(2,4);
                window.location.href='workbench/SearchPhone.do/'+city;
            });

            //点击提交信息
            $("#submitInformationBtn").click(function (){
                //获取提交的内容信息
                var contain=$("#feedBackArea").val();
                //获取上传的文件名字
                var activityFileName=$("#activityFile").val();
                var imageName=activityFileName.substr(activityFileName.lastIndexOf("\\")+1);
                if(contain==""){
                    alert("反馈信息不能为空");
                    return ;
                }
                $.ajax({
                    url:'workbench/getContainer.do',
                    data:{
                        textCon:contain,
                        imageName:imageName
                    },
                    type:'post',
                    dataType: 'json',
                    success:function (data){
                        if(data.code=="1"){
                            alert(data.message);
                            //跳转到主页
                            window.location.href='workbench/toMain.do'
                        }else{
                            alert(data.message);
                        }
                    }
                })
                $("#feedBackArea").val("");
                $("#activityFile").val("");
            });

            //点击导入市场活动的导入按钮
            $("#importActivityBtn").click(function (){
                //获取文件的名字，进行表单验证,使用jQuery对象的val方法可以获取导入文件的名字
                var activityFileName=$("#activityFile").val();
                //对文件名字进行解析获取文件的后缀名,activityFileName.substr(startIndex)是用来获取从startIndex开始到结尾的字符
                //activityFileName.lastIndexOf(".")是用来获取最后一个点出现的下标
                //toLocaleLowerCase()是将字符串中的字符全部转化成小写
                suffix=activityFileName.substr(activityFileName.lastIndexOf(".")+1).toLocaleLowerCase();
                if(suffix!="jpg"&&suffix!="png"){
                    alert("只能导入JPG或者PNG表格文件");
                    return;
                }

                //获取DOM对象，然后调用files方法，因为files是代表上传多个文件，所以只取第一个
                var activityFile=$("#activityFile")[0].files[0];
                if(activityFile.size>5*1024*1024){//以字节为单位
                    alert("只能导入小于5MB的文件");
                    return;
                }

                //生成ForData对象，让ajax将文件传递过去
                var formdate=new FormData();
                //写入键和值
                formdate.append("activityFile",activityFile);

                $.ajax({
                    url:'workbench/activity/testUploadFile.do',
                    data:formdate,
                    processData:false,//表明在发送ajax之后，将所有的参数转化成字符串 默认为是 因为要发送的是文件，所以不需要转化成字符串
                    contentType:false,//表明在发送ajax之后，将所有的参数进行urlencode编码，默认为是，对于文件不需要进行urlencode编码
                    dataType:'json',
                    type:'post',
                    success:function (data){
                        if(data.code=="1"){
                            alert(data.message);
                            //关闭模态窗口
                            $("#importActivityModal").modal("hide");
                        }
                        else{
                            alert(data.message);
                            //不关闭模态窗口
                            $("#importActivityModal").modal("show");
                        }
                    }
                });
            });
        });
    </script>
</head>
<body>

<!-- 导入市场活动的模态窗口 -->
<div class="modal fade" id="importActivityModal" role="dialog">
    <div class="modal-dialog" role="document" style="width: 85%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">导入市场活动</h4>
            </div>
            <div class="modal-body" style="height: 350px;">
                <div style="position: relative;top: 20px; left: 50px;">
                    请选择要上传的文件：<small style="color: gray;">[仅支持.jpg和.png后缀文件]</small>
                </div>
                <div style="position: relative;top: 40px; left: 50px;">
                    <input type="file" id="activityFile">
                </div>
                <div style="position: relative; width: 400px; height: 320px; left: 45% ; top: -40px;" >
                    <h3>重要提示</h3>
                    <ul>
                        <li>操作仅针对图片，仅支持.jpg和.png文件。</li>
                        <li>给定文件的第一行将视为字段名。</li>
                        <li>请确认您的文件大小不超过5MB。</li>
                        <li>日期值以文本形式保存，必须符合yyyy-MM-dd格式。</li>
                        <li>日期时间以文本形式保存，必须符合yyyy-MM-dd HH:mm:ss的格式。</li>
                        <li>默认情况下，字符编码是UTF-8 (统一码)，请确保您导入的文件使用的是正确的字符编码方式。</li>
                        <li>导入文件保存路径为 ..//软件开发新技术大作业第二版\照片</li>
                    </ul>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button id="importActivityBtn" type="button" class="btn btn-primary">导入</button>
            </div>
        </div>
    </div>
</div>
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
            <li class="login-signup">
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
                	<a >
	                    <button class="btn btn-danger btn-search" type="button" id="searchGoodsBtn">
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
	<div class="panel panel-default feedback-panel">
        <div class="panel-heading">
            <h3 class="panel-title">用户反馈</h3>         <!-- 注意此功能需要更改WorkbenchIndex.java中的文件保存路径 -->
        </div>
        <div class="panel-body">
            <div class="form-group">
                <label for="feedBackArea" class="control-label">请输入反馈信息</label>
                <textarea class="form-control feedback-panel-textarea" rows="5" id="feedBackArea"></textarea>
            </div>
        </div>
        <div class="panel-footer feedback-panel-footer">
            <div></div>
            <button type="button" class="btn btn-default" data-toggle="modal" data-target="#importActivityModal" ><span class="glyphicon glyphicon-import"></span> 上传照片（导入）</button>
            <button class="btn btn-danger" id="submitInformationBtn">提交</button>
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
</html>