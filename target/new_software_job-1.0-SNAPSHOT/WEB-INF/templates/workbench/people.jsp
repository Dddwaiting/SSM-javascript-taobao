<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--引入标签库，jstl的标签库--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String bath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <link rel="dns-prefetch" href="//g.alicdn.com" />
  <link rel="dns-prefetch" href="//gtms01.alicdn.com" />
  <link rel="dns-prefetch" href="//img.alicdn.com" />
  <link rel="dns-prefetch" href="//gm.mmstat.com" />
  <meta name="data-spm" content="a1z02" />
  <meta name="description" content="中国最大、最安全的网上交易社区，尽享淘宝乐趣！" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>我的淘宝</title>
  <!--[if IE 6]>
  <script type="text/javascript">if(!/ie6.htm/.test(window.location.href)){window.location.href="/ie6.htm"}</script>
  <![endif]-->
  <link rel="shortcut icon" href="//img.alicdn.com/favicon.ico" type="image/x-icon"/>
  <link rel="apple-touch-icon" sizes="72x72" href="//img.alicdn.com/tps/i1/T11naSFbdaXXcCcBHm-72-72.png" />

  <script type="text/javascript">
    window.g_config = window.g_config || {};
    window.g_config.toolkit = {
      "backTop": true,
      "feedback": true,
      "consumerservice": {
        "label": '在线咨询',
        "href": "https://h5.m.taobao.com/alicare/alicarePC.html?from=tb_my_taobao_spm"
      }
    };
  </script>
  <link rel="stylesheet" href="//g.alicdn.com/??kg/global-util/1.0.6/index-min.css,kg/tb-nav/2.4.1/index-min.css">
  <script src="//g.alicdn.com/??kissy/k/1.4.16/seed-min.js,kg/kmd-adapter/0.1.5/index.js,kg/kmd-adapter/0.1.5/util.js,kg/global-util/1.0.7/index-min.js,tb/tracker/index.js"></script>
  <script>
    window.g_config = window.g_config || {};
    window.g_config.showNav = false;
  </script>
  <script src="//o.alicdn.com/tbhome/tbnav/index.js" charset="UTF-8"></script>
  <script>KISSY.config({modules:{'flash':{alias:['gallery/flash/1.0/']}}});KISSY.use('kg/global-util/1.0.7/');</script>

  <link rel="stylesheet" href="//g.alicdn.com/tb/mytaobao/5.1.5/pages/home/init.css" type="text/css" />
  <script type="text/javascript">
    KISSY.add("util", [],function(S,require, exports, module){ module.exports = S; });
    window.MC = {
      "packagesBase":"//g.alicdn.com/tb/mytaobao/5.1.5/"
    };
    const mtMenuFlags  = {
      editEnable: true,
      enableFetchRemoteMenu: true,
      showB2BMenu:  false
    };
    var __MT_MENU_FLAGS = JSON.stringify(mtMenuFlags);
  </script>
  <script type="text/javascript" src="//g.alicdn.com/tb/??mytaobao/5.1.5/components/common/package-config.js,mytaobao/5.1.5/deps.js"></script>
  <script type="text/javascript" src="//g.alicdn.com/mtb/lib-mtop/2.3.14/mtop.js"></script>
</head>
<body data-spm="1"><script type="text/javascript">
  (function (d) {
    var t=d.createElement("script");t.type="text/javascript";t.async=true;t.id="tb-beacon-aplus";
    t.setAttribute("exparams","category=&userid=3373836798&aplus");
    t.src=("https:"==d.location.protocol?"https://s":"http://a")+".tbcdn.cn/s/aplus_v2.js";
    d.getElementsByTagName("head")[0].appendChild(t);
  })(document);
</script>

<div class="site-nav" id="J_SiteNav" data-component-config='{ "cart": "0.0.6","message": "3.4.6","umpp": "1.5.4","mini-login": "6.3.8","tb-ie-updater": "0.0.4","tbar": "2.1.0","tb-footer": "1.1.8","sidebar": "1.0.10" }' data-tbar='{ "show":true, "miniCart": "2.12.2","paramsBlackList": "_wt,seeyouagain1722","my_activity": "https:&#x2F;&#x2F;market.m.taobao.com&#x2F;apps&#x2F;abs&#x2F;5&#x2F;38&#x2F;my12?psId=58386&amp;pcPsId=58388", "venueUrl": "https:&#x2F;&#x2F;1212.taobao.com?wh_weex=true&amp;data_prefetch=true&amp;wx_navbar_transparent=true", "helpUrl": "https://consumerservice.taobao.com/online-help", "validTime":{"startTime": 1512057599, "endTime": 1513094400}, "style": {"name": "171212", "path": "kg/sidebar-style-171212/0.0.5/" }, "page":[],"blackList":[],"navDataId":{"tceSid":1182567,"tceVid":0},"pluginVersion":{ "cart":"0.2.0","history":"0.2.0","redpaper":"0.0.8","gotop":"0.2.5","help":"0.2.1","ww":"0.0.3","pagenav":"0.0.27","myasset":"0.0.9","my1212":"0.0.1","my1111":"0.2.2"}}'>
  <div class="site-nav-bd" id="J_SiteNavBd">

    <ul class="site-nav-bd-l" id="J_SiteNavBdL" data-spm-ab="1">


      <li class="site-nav-menu site-nav-login" id="J_SiteNavLogin" data-name="login" data-spm="754894437">
        <div class="site-nav-menu-hd">
          <a href="//login.taobao.com/member/login.jhtml?f=top&redirectURL=https%3A%2F%2Fwww.taobao.com%2F" target="_top">

            <span>亲，请登录</span>
          </a>

        </div>

      </li>




      <li class="site-nav-menu site-nav-mobile" id="J_SiteNavMobile" data-name="mobile" data-spm="1997563273">
        <div class="site-nav-menu-hd">
          <a href="https://market.m.taobao.com/app/fdilab/download-page/main/index.html" target="_top">

            <span>手机逛淘宝</span>
          </a>

        </div>

      </li>




      <li class="site-nav-menu site-nav-weekend site-nav-multi-menu J_MultiMenu" id="J_SiteNavWeekend" data-name="weekend" data-spm="201711111212">
      </li>



    </ul>

    <ul class="site-nav-bd-r" id="J_SiteNavBdR" data-spm-ab="2">


      <li class="site-nav-menu site-nav-home" id="J_SiteNavHome" data-name="home" data-spm="1581860521">
        <div class="site-nav-menu-hd">
          <a href="//www.taobao.com/" target="_top">

            <span>淘宝网首页</span>
          </a>

        </div>

      </li>




      <li class="site-nav-menu site-nav-mytaobao site-nav-multi-menu J_MultiMenu" id="J_SiteNavMytaobao" data-name="mytaobao" data-spm="1997525045">
        <div class="site-nav-menu-hd">
          <a href="//i.taobao.com/my_taobao.htm" target="_top">

            <span>我的淘宝</span>
          </a>

          <span class="site-nav-arrow"><span class="site-nav-icon">&#xe605;</span></span>

        </div>

        <div class="site-nav-menu-bd site-nav-menu-list">
          <div class="site-nav-menu-bd-panel menu-bd-panel">

            <a href="//trade.taobao.com/trade/itemlist/list_bought_items.htm" target="_top">已买到的宝贝</a>

            <a href="//www.taobao.com/markets/footmark/tbfoot" target="_top">我的足迹</a>

          </div>
        </div>

      </li>




      <li class="site-nav-menu site-nav-cart site-nav-menu-empty site-nav-multi-menu J_MultiMenu" id="J_MiniCart" data-name="cart" data-spm="1997525049">
        <div class="site-nav-menu-hd">
          <a href="//cart.taobao.com/cart.htm?from=mini&ad_id=&am_id=&cm_id=&pm_id=1501036000a02c5c3739" target="_top">
            <span class="site-nav-icon site-nav-icon-highlight">&#xe603;</span>
            <span>购物车</span>
            <strong class="h" id="J_MiniCartNum"></strong>
          </a>

          <span class="site-nav-arrow"><span class="site-nav-icon">&#xe605;</span></span>

        </div>
        <div class="site-nav-menu-bd">
          <div class="site-nav-menu-bd-panel menu-bd-panel">
          </div>
        </div>
      </li>




      <li class="site-nav-menu site-nav-favor site-nav-multi-menu J_MultiMenu" id="J_SiteNavFavor" data-name="favor" data-spm="1997525053">
        <div class="site-nav-menu-hd">
          <a href="//shoucang.taobao.com/item_collect.htm" target="_top">
            <span class="site-nav-icon">&#xe604;</span>
            <span>收藏夹</span>
          </a>

          <span class="site-nav-arrow"><span class="site-nav-icon">&#xe605;</span></span>

        </div>

        <div class="site-nav-menu-bd site-nav-menu-list">
          <div class="site-nav-menu-bd-panel menu-bd-panel">

            <a href="//shoucang.taobao.com/item_collect.htm" target="_top">收藏的宝贝</a>

            <a href="//shoucang.taobao.com/shop_collect_list.htm" target="_top">收藏的店铺</a>

          </div>
        </div>

      </li>




      <li class="site-nav-menu site-nav-catalog" id="J_SiteNavCatalog" data-name="catalog" data-spm="1997563209">
        <div class="site-nav-menu-hd">
          <a href="//huodong.taobao.com/wow/tbhome/act/market-list" target="_top">

            <span>商品分类</span>
          </a>

        </div>

      </li>




      <li class="site-nav-menu site-nav-free" id="J_SiteNavFree" data-name="free" data-spm="1997525059">
        <div class="site-nav-menu-hd">
          <a href="//ishop.taobao.com/openshop/tb_open_shop_landing.htm?accessCode=tbopenshop_personal" target="_top">

            <span>免费开店</span>
          </a>

        </div>

      </li>


      <li class="site-nav-pipe">|</li>



      <li class="site-nav-menu site-nav-seller site-nav-multi-menu J_MultiMenu" id="J_SiteNavSeller" data-name="seller" data-spm="1997525073">
        <div class="site-nav-menu-hd">
          <a href="//myseller.taobao.com/home.htm" target="_top">

            <span>千牛卖家中心</span>
          </a>

          <span class="site-nav-arrow"><span class="site-nav-icon">&#xe605;</span></span>

        </div>

        <div class="site-nav-menu-bd site-nav-menu-list">
          <div class="site-nav-menu-bd-panel menu-bd-panel">

            <a href="//ishop.taobao.com/openshop/tb_open_shop.htm?accessCode=tbopenshop_personal" target="_top">免费开店</a>

            <a href="//trade.taobao.com/trade/itemlist/list_sold_items.htm" target="_top">已卖出的宝贝</a>

            <a href="//sell.taobao.com/auction/goods/goods_on_sale.htm" target="_top">出售中的宝贝</a>

            <a href="//fuwu.taobao.com/?tracelog=tbdd" target="_top">卖家服务市场</a>

            <a href="//daxue.taobao.com/" target="_top">卖家培训中心</a>

            <a href="//healthcenter.taobao.com/home/health_home.htm" target="_top">体检中心</a>

            <a href="//infob.taobao.com/help" target="_top">问商友</a>

          </div>
        </div>

      </li>




      <li class="site-nav-menu site-nav-service site-nav-multi-menu J_MultiMenu" id="J_SiteNavService" data-name="service" data-spm="754895749">
        <div class="site-nav-menu-hd">
          <a href="https://consumerservice.taobao.com" target="_top">

            <span>联系客服</span>
          </a>

          <span class="site-nav-arrow"><span class="site-nav-icon">&#xe605;</span></span>

        </div>

        <div class="site-nav-menu-bd site-nav-menu-list">
          <div class="site-nav-menu-bd-panel menu-bd-panel">

            <a href="https://consumerservice.taobao.com/online-help" target="_top">消费者客服</a>

            <a href="//helpcenter.taobao.com/servicehall/home " target="_top">商家服务大厅</a>

          </div>
        </div>

      </li>




      <li class="site-nav-menu site-nav-sitemap site-nav-multi-menu J_MultiMenu" id="J_SiteNavSitemap" data-name="sitemap" data-spm="1997525077">
        <div class="site-nav-menu-hd">
          <a href="//huodong.taobao.com/wow/tbhome/act/sitemap" target="_top">
            <span class="site-nav-icon site-nav-icon-highlight">&#xe601;</span>
            <span>网站导航</span>
          </a>

          <span class="site-nav-arrow"><span class="site-nav-icon">&#xe605;</span></span>

        </div>

      </li>



    </ul>

  </div>
</div>

<!--[if lt IE 9]>
<style>html,body{overflow:hidden;height:100%}</style>
<div class="tb-ie-updater-layer"></div>
<div class="tb-ie-updater-box" data-spm="20161112">
  <a href="https://www.google.cn/intl/zh-CN/chrome/browser/desktop/" class="tb-ie-updater-google" target="_blank" data-spm-click="gostr=/tbieupdate;locaid=d1;name=google">谷歌 Chrome</a>
  <a href="http://www.uc.cn/ucbrowser/download/" class="tb-ie-updater-uc" target="_blank" data-spm-click="gostr=/tbieupdate20161112;locaid=d2;name=uc">UC 浏览器</a>"
</div>
<![endif]-->
<script type="text/javascript">
  if(document.body.clientWidth<=1024 || window.screen.width < 1190 ){
    document.body.className='mt-ml-990';
  }else{
    document.body.className='mt-ml-1190';
  }
  KISSY.use("ua", function(S, UA){
    if(UA.mobile){document.body.className = document.body.className + ' MOBILE'}
  });
</script>
<!-- start ems/mytaobao/header -->
<link rel="stylesheet" href="//g.alicdn.com/tb/mtbframe/2.0.2/pages/home/base.css">
<script type="text/javascript" src="//g.alicdn.com/tb/mtbframe/2.0.4/components/common/base.js"></script>
<!--
<link rel="stylesheet" href="//g.alicdn.com/tb/mytaobao/5.0.8/pages/home/base.css">
<script type="text/javascript" src="//g.alicdn.com/tb/mytaobao/5.1.1/components/common/base.js"></script>
-->
<header class="mt-header" data-spm="a210b">
  <article>
    <div class="mt-logo" style="margin-left: 0px;">
      <a title="我的淘宝" style="background-image: url(https://img.alicdn.com/imgextra/i2/O1CN015xANTA1iq6KMo02E5_!!6000000004463-2-tps-140-34.png);background-image: -webkit-image-set(url(https://img.alicdn.com/imgextra/i2/O1CN015xANTA1iq6KMo02E5_!!6000000004463-2-tps-140-34.png) 1x,url(https://img.alicdn.com/imgextra/i1/O1CN01sCCscO1CKtdpqHDyv_!!6000000000063-2-tps-280-62.png) 2x);" href="//i.taobao.com/my_taobao.htm?nekot=1470211439696&amp;tracelog=newmytb_logodianji"
         class="mt-tblogo" data-spm="d1000351"></a>
    </div>
    <nav class="mt-nav">
      <ul id="J_MtMainNav">
        <li class="selected"> <a href="//localhost:8080/new_software_job_war_exploded/workbench/toMain.do" data-spm="d1000352">首页</a> <i class="mt-arrow"></i> </li>
        <li class="J_MtNavSubTrigger">
          <a class="mt-nav-parent" href="//member1.taobao.com/member/fresh/account_security.htm?tracelog=mytaobaonavsetup&amp;nekot=1470211439696"
             data-spm="d1000356">账户设置<i><em></em><s></s></i></a>
          <i class="mt-arrow"></i>
          <div class="J_MtNavSub mt-nav-sub hide">
            <div class="mt-nav-arr"></div>
            <dl class="mt-nav-sub-col1">
              <dt>安全设置</dt>
              <dd>
                <p><a data-spm="11" href="//110.taobao.com/account/product_validate.htm?type=password">修改登录密码</a></p>
                <p><a data-spm="12" href="//110.taobao.com/account/rebind_phone_begin.htm">手机绑定</a></p>
                <p><a data-spm="13" href="//110.taobao.com/product/question_set.htm">密保问题设置</a></p>
                <p><a data-spm="10" href="//member1.taobao.com/member/fresh/account_security.htm">其他</a></p>
              </dd>
            </dl>
            <dl class="mt-nav-sub-col2">
              <dt>个人资料</dt>
              <dd>
                <p><a data-spm="8" href="//member1.taobao.com/member/fresh/deliver_address.htm">收货地址</a></p>
                <p><a data-spm="14" href="//i.taobao.com/user/baseInfoSet.htm">修改头像、昵称</a></p>
              </dd>
            </dl>
            <dl class="mt-nav-sub-col3">
              <dt>账号绑定</dt>
              <dd>
                <p><a data-spm="7" href="//member1.taobao.com/member/fresh/account_management.htm">支付宝绑定</a></p>
                <p><a data-spm="16" href="//member1.taobao.com/member/fresh/weibo_bind_management.htm">微博绑定</a></p>
              </dd>
            </dl>
          </div>
        </li>

      </ul>
      <div class="search" id="J_Search" role="search">
        <div class="search-panel search-sns-panel-field">
          <form target="_blank" action="//s.taobao.com/search" name="search" id="J_TSearchForm"
                class="search-panel-focused">
            <div class="search-button">
              <button class="btn-search" type="submit">搜 索</button>
            </div>
            <div class="search-panel-fields">
              <label for="q"></label>
              <div class="search-combobox" id="ks-component1045">
                <div class="search-combobox-input-wrap">
                  <input id="q" name="q" accesskey="s" autofocus="true" autocomplete="off"
                         x-webkit-speech="" x-webkit-grammar="builtin:translate" aria-haspopup="true"
                         aria-combobox="list" role="combobox" class="search-combobox-input"
                         aria-label="请输入搜索文字或从搜索历史中选择"></div>
              </div>
            </div>
            <input type="hidden" name="commend" value="all">
            <input type="hidden" name="ssid" value="s5-e" autocomplete="off">
            <input type="hidden" name="search_type" value="mall" autocomplete="off">
            <input type="hidden" name="sourceId" value="tb.index">
            <input type="hidden" name="area" value="c2c">
            <input type="hidden" name="spm" value="a1z02.1.6856637.d4910789">
            <!--[if lt IE 9]><s class="search-fix search-fix-panellt"></s><s class="search-fix search-fix-panellb"></s>
            <![endif]-->
          </form>
        </div>
      </div>
    </nav>

  </article>
</header>
<!-- end ems/mytaobao/header -->
<div id="layout-center">
  <div class="grid-c2">
    <div id="J_Col_Main" class="col-main">
      <div class="main-wrap">

        <div class="mt-ml-c1">
          <div class="mt-ml-shim">
            <div class="m-userinfo" data-spm="972272805">
              <div class="s-userbar s-bar" style="padding-top: 10px;">
                <div class="s-baseinfo">
                  <a href="//i.taobao.com/user/baseInfoSet.htm?nekot=1673246013150&tracelog=newmytb_bianjiziliao"
                     target="_blank" class="s-avatar" data-spm="d4911997">
                    <span class="s-edit-mask">编辑资料</span>
                    <img src="//wwc.alicdn.com/avatar/getAvatar.do?userId=3373836798&width=160&height=160&type=sns"/>
                  </a>
                  <input id="mtb-nickname" type="hidden" value="t_1501936539079_074"/>
                  <input id="mtb-userid" type="hidden" value="3373836798"/>
                  <div class="s-name">
                    <a data-spm="d4912005" target="_blank"
                       href="//i.taobao.com/user/baseInfoSet.htm?spm=a310q.2219005.0.0.ncBmVr">
                      <em>Dddwaiting</em>
                      (t_1501936539079_074)
                    </a>
                  </div>
                  <div class="s-prestige" style="margin-left: 80px;">
                  </div>
                </div>
                <ul class="s-my-stuffs">
                  <li class="s-myalipay J_DropRoot" id="J_MyAlipayInfo">
                <span href="#" class=""
                      style="zoom: 1; cursor: pointer; position: relative; z-index: 2; display: block; padding: 10px 0; color: #546d7e; text-align: center;">
                                            <span class="realy-name">
                            <a class="icon" title="支付宝实名认证" data-spm="d1000297"></a>
                        </span>
                                        <a data-spm="d4912037" data-spm-click="gostr=/sns;locaid=d4912037;" target="_blank"  href="//my.alipay.com/portal/i.htm?src=yy_content_jygl&sign_from=3000&sign_account_no=20887226779204020156">我的支付宝</a>
                    <span   class="icon-arr"><i></i><em></em></span></span>
                  </li>
                  <li class="s-privilegeinfo J_DropRoot" id="J_MyPrivilegeInfo">
                    <span class="J_DropTrigger i-trigger">我的优惠信息<span class="icon-arr"><i></i><em></em></span></span>
                    <div class="i-dropdown J_DropDown">
                      <div class="i-dropdown-shim">
                        <div class="i-dropdown-con">
                          <ul>
                            <li><a target="_blank" href="//marketingop.taobao.com/cashHongbao.htm">红包：<em
                                    class="highlight J_redPackageNum">-</em></a></li>
                            <li><a data-spm="d4912021" target="_blank"
                                   href="//taoquan.taobao.com/framework/got_bonus.htm?tabIndex=1&display=true&tabDomId=shopCouponTab"
                                   data-spm="d4912021">店铺优惠券：<em class="highlight J_Shop_Promotion">-</em></a></li>
                            <li><a data-spm="d4912025" target="_blank" href="//vip.tmall.com/point/detail/all"
                                   data-spm="d4912025">天猫积分：<em class="highlight J_Tmail_Point">-</em></a></li>
                            <li><a data-spm="d4912029" target="_blank"
                                   href="//trade.tmall.com/member/myCoupon.htm?tracelog=mytaobao_dianquanka"
                                   data-spm="d4912029">查看天猫点券卡</a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </li>
                  <li>
                    <a href="//member1.taobao.com/member/fresh/deliver_address.htm" target="_blank" data-spm="d4912033"
                       class="J_DropTrigger i-trigger">我的收货地址</a>
                  </li>
                </ul>
              </div>
              <div class="s-my-counts s-content">
                <ul>
                  <li>
                    <a data-spm="d4919660" target="_blank" href="//buyertrade.taobao.com/trade/itemlist/list_bought_items.htm?action=itemlist/BoughtQueryAction&event_submit_do_query=1&tabCode=waitPay">
                <span>待付款
                                            <em></em>
                                    </span>
                    </a>
                  </li>
                  <li>
                    <a data-spm="d4919661" target="_blank" href="//buyertrade.taobao.com/trade/itemlist/list_bought_items.htm?action=itemlist/BoughtQueryAction&event_submit_do_query=1&tabCode=waitSend">
                <span>待发货
                                            <em></em>
                                    </span></a>
                  </li>
                  <li>
                    <a data-spm="d4919662" target="_blank" href="//buyertrade.taobao.com/trade/itemlist/list_bought_items.htm?action=itemlist/BoughtQueryAction&event_submit_do_query=1&tabCode=waitConfirm">
                <span>待收货
                                            <em>1</em>
                                    </span>
                    </a>
                  </li>
                  <li>
                    <a data-spm="d4919663" target="_blank" href="//buyertrade.taobao.com/trade/itemlist/list_bought_items.htm?action=itemlist/BoughtQueryAction&event_submit_do_query=1&tabCode=waitRate">
                <span>待评价
                                            <em>2</em>
                                    </span>
                    </a>
                  </li>
                  <li>
                    <a data-spm="d4919664" target="_blank" href="//refund2.taobao.com/dispute/buyerDisputeList.htm">
                 <span>退款
                                            <em></em>
                                     </span>
                    </a>
                  </li>
                </ul>
              </div>
            </div>

            <a style="display:none!important" id="tanx-a-mm_12852562_1778064_95094163"></a>
            <script>
              KISSY.getScript("https://phs.tanx.com/ex?i=mm_12852562_1778064_95094163" + "&_t=" + new Date().getTime())
            </script>
            <div data-spm="1998049142" class="m-logistics g-box-base g-mb-set">
              <div class="s-bar">
                <i class="s-icon" ></i>我的物流
              </div>
              <div class="s-content">
                <ul class="lg-list">
                  <li class="lg-item">


                  </li>
                </ul>
              </div>
            </div>
            <div class="J_LogisticsTip g-logisics-tip g-smarttip ks-overlay ks-overlay-hidden">
              <div class="ks-overlay-content">
                <span class="s-tip-arr"><i></i><em></em></span>
                <div class="s-tip-con" ></div>
              </div>
            </div>

            <script type="text/config" class="J_Config" data-subfamily="spmData">
{"tbToken":"e37895ea31be8","login":true,"getSpmData":{"data":{"spmDetails":[{"scm":"1639-1998049143","spm":"d4919530"},{"scm":"1502-1998052845","spm":"d4919665"},{"scm":"1658-1998060244","spm":"d4919667"}]},"desc":"success","msg":"success","ret":0,"version":1}}
</script>
            <div class="m-guess-you-like" data-spm="1998049143">
              <div class="s-bar">根据浏览，猜我喜欢
                <a class="i-load-more-item-shadow hide" data-spm-click="gostr=/sns;locaid=d4919531;" href="#"><i>&#xe63e;</i>换一组</a>
              </div>
              <div class="s-content">
                <div class="s-inner-content">
                  <div class="s-item-list clearfix">
                    <div class="s-item-data-loading"></div>
                  </div>
                  <div class="s-more-btn i-load-more-item hide" data-screen="1"><i>&#xe63e;</i>换一组</div>
                </div>
              </div>
            </div>
            <div data-spm="1998049144" class="m-someone-like-you hide">
              <div class="s-bar clearfix">爱逛街为你量身推荐</div>
              <div class="s-content">
                <div class="s-inner-content">
                  <div class="s-item-list clearfix">
                    <div class="s-item-data-loading"></div>
                  </div>
                  <div class="s-more-btn i-load-more-item hide" data-screen="1">更多</div>
                </div>

              </div>
            </div>
          </div>
        </div>
        <div class="mt-ml-toolbar J_MTToolBar">
          <a class="s-tool-close J_ToolClose" href="#">&#xe607;</a>
          <div class="s-tool-tab">
            <a class="s-tool-btn J_ToolBtn" data-for=".J_Calendar,.J_SUniverse" href="#">
              <i class="s-tool-icon">&#xe636;</i>
              <br/>我<br/>的<br/>日<br/>历<br/>
            </a>
            <i class="s-tool-hr"></i>
            <a class="s-tool-btn J_ToolBtn" data-for=".J_Convenience,.J_SUniverse" href="#">
              <i class="s-tool-icon">&#xe635;</i>
              <br/>便<br/>民<br/>服<br/>务</a>
          </div>
        </div>
        <div class="mt-ml-c2">
          <div data-spm="1998056009" class="g-box-base m-calendar J_Calendar i-toobar-con">
            <script type="text/config" class="J_Config" data-subfamily="appIds">[]</script>
            <div class="s-bar">
              我的日历
            </div>
            <div class="s-content">
              <div class="i-maskself J_CalendarMask"></div>
              <div class="s-care s-care-noweather" >
                <div class="s-date">
                  <em>09</em>
                  <span>星期一</span>
                  <span>2023.01</span>
                </div>
              </div>
              <a data-spm-click="gostr=/sns;locaid=d4919648;" data-spm="d4919648" href="#" class="i-btn-more" style="display: none">
                <span class="s-mode-collect">更多 <span class="g-arr-down"><i></i><em></em></span></span>
                <span class="s-mode-extend">收起 <span class="g-arr-up"><i></i><em></em></span></span>
              </a>
            </div>
          </div>

          <div id="J_TB_rightp4p" class="i-toobar-con m-suniverse J_SUniverse">
            <script type="text/javascript">
              document.write('<a style="display:none!important"  id="tanx-a-mm_12852562_1778064_23482037"></a>');
              KISSY.use('node', function(S, Node) {
                var isP4PShow = false;
                function elementInViewport(el) {
                  var rect = el.getBoundingClientRect()

                  return (
                          rect.top    >= 0
                          && rect.left   >= 0
                          && rect.top <= (window.innerHeight || document.documentElement.clientHeight)
                  )
                }
                function checkad() {
                  if (elementInViewport(document.getElementById('J_TB_rightp4p')) && !isP4PShow) {
                    isP4PShow = true;
                    KISSY.getScript(
                            location.protocol
                            + '//p.tanx.com/ex?i=mm_12852562_1778064_23482037'
                            + '&_t=' + new Date().getTime()
                    );
                  }
                }
                KISSY.ready(function() {
                  checkad();
                });
                Node.all(window).on('scroll', function() {
                  checkad();
                });
              });
            </script>
          </div>

        </div>

      </div>
    </div>
    <section id="J_Col_Sub" class="col-sub">
      <script type="text/javascript">
        ___RecentVisitOn = true;
      </script>
      <div id="J_EMS" style="width:0;height:0;"></div>
      <aside class="mt-menu" id="J_MtSideMenu">
        <div class="mt-menu-tree">
          <dl class="mt-menu-item" data-spm="a2109">
            <dt class="fs14">全部功能</dt>
            <dd>
              <a href="//cart.taobao.com/cart.htm?nekot=1470211439694" target="_blank" role="menuitem"
                 data-spm="d1000367">我的购物车</a>
            </dd>
            <dd class="mt-menu-sub fold J_MtSideTree">
              <b class="mt-indicator J_MtIndicator">-</b>
              <a id="bought" href="//trade.taobao.com/trade/itemlist/list_bought_items.htm?nekot=1470211439694"
                 data-spm="d1000368">已买到的宝贝</a>
              <ul class="mt-menu-sub-content">
                <li id="jinpai">
                  <a href="//paimai.taobao.com/auctionList/my_auction_list.htm?nekot=1470211439694"
                     data-spm="d1000369">我的拍卖</a>
                </li>
                <li id="jipiao">
                  <a href="//jipiao.trip.taobao.com/order_manager.htm?nekot=1470211439694" role="menuitem"
                     data-spm="d1000370">机票酒店保险</a>
                </li>
                <li id="caipiao">
                  <a href="//caipiao.taobao.com/lottery/order/my_all_lottery_order.htm?nekot=1470211439694"
                     data-spm="d1000371">我的彩票</a>
                </li>
                <script>
                  if ((typeof __MT_MENU_FLAGS !== "undefined") && __MT_MENU_FLAGS
                          .showB2BMenu)
                  {
                    document.write(
                            '<li id="trade1688">' +
                            '<a href="//trade.taobao.com/trade/itemlist/list_bought_items_outer.htm?from=1688&scm=1217.1688.0.1&nekot=1470211439694" data-spm="d1000390">我的1688订单</a>' +
                            '</li>'
                    );
                  }
                </script>
                <li id="overseasTransport">
                  <a href="//consign.i56.taobao.com/user/consolidation/consolidatedGoods.htm?spm=a1z0f.7703789.0.0.5JrZ4R">官方集运</a>
                </li>
              </ul>
            </dd>
            <dd id="boughtShop">
              <a href="//favorite.taobao.com/list_bought_shops_n.htm?itemtype=0&amp;nekot=1470211439694"
                 data-spm="d1000373">购买过的店铺</a>
            </dd>
            <dd id="invoice" class="mt-menu-sub fold J_MtSideTree">
              <b class="mt-indicator J_MtIndicator">+</b>
              <a href="//inv.tmall.com/buyer/invoiceList.htm" data-spm="d1001380">我的发票</a>
              <ul class="mt-menu-sub-content">
                <li id="invoiceList">
                  <a href="//inv.tmall.com/buyer/invoiceInfoList.htm" data-spm="d1001381">开票信息</a>
                </li>
                <li>
                  <a href="//inv.tmall.com/buyer/invoiceList.htm" data-spm="d1001381">发票管理</a>
                </li>
              </ul>
            </dd>
            <dd id="favorite"><a href="//shoucang.taobao.com/collectList.htm?nekot=1470211439694" data-spm="d1000374">我的收藏</a></dd>
            <dd id="point"><a href="//vip.tmall.com/point/all?nekot=1470211439694" target="_blank" data-spm="d1000375">我的积分</a></dd>
            <dd id="gotBonus"><a href="//pages.tmall.com/wow/a/act/tmall/dailygroup/1318/wupr?wh_pid=daily-253855" data-spm="d1000376">我的优惠信息</a></dd>
            <dd id="myRate"><a href="//rate.taobao.com/myRate.htm?nekot=1470211439694" data-spm="d1000377">评价管理</a></dd>
            <dd class="mt-menu-sub fold J_MtSideTree">
              <b class="mt-indicator J_MtIndicator">+</b>
              <a class="J_MtIndicator" href="#" data-spm="d1000378">退款维权</a>
              <ul class="mt-menu-sub-content">
                <li id="refundList">
                  <a href="//refund2.taobao.com/dispute/buyerDisputeList.htm" data-spm="d1000379">退款管理</a>
                </li>
                <li id="rulesManager">
                  <a href="//rights.taobao.com/complaint/buyerList.htm"
                     data-spm="d1000383">投诉管理</a>
                </li>
                <li id="postedSuit">
                  <a href="//archer.taobao.com/myservice/report/report_i_posted_list.htm?type=2&amp;user_role=2&amp;isarchive=false&amp;nekot=1470211439694" data-spm="d1000381">举报管理</a>
                </li>
              </ul>
            </dd>
            <dd>
              <a data-spm="d1000391" href="//www.taobao.com/markets/footmark/tbfoot" target="_blank" role="menuitem">我的足迹</a>
            </dd>
            <dd>
              <a href="//aliqin.tmall.com/flowwallet/index.htm" target="_blank" role="menuitem">流量钱包</a>
            </dd>
          </dl>
          <!---
          <p class="hide J_RecentVisitPlaceholder"></p>
          -->
          <style></style>
        </div>
      </aside>
    </section>
  </div>
</div>
<script type="text/javascript">
  try {
    const switches = {
      eidtEnable: true, // 左侧通用菜单是否可编辑
      enableFetchRemoteMenu: true, // 是否从服务器获取左侧个性化菜单
      customDacuIcon: true, // 是否启用定制化大促透标配置
      nianhuojieIcon: null, // 年货节标
      nianhuojieJingxuanIcon: null, // 年货节精选图标
      gouwuquanIcon: null, // 购物券标
      hongbaoIcon: null, // 红包标
      xinshiliIcon: null, // 新势力标
      taobaoIcon: '//img.alicdn.com/tps/TB170BXOXXXXXbmXVXXXXXXXXXX-32-16.png', // 淘宝大促标
      tmallIcon: '//img.alicdn.com/tps/TB1F3p4OpXXXXXPaFXXXXXXXXXX-32-16.png', // 天猫大促标
      hanglvIcon: '//img.alicdn.com/tps/TB1ZdG7OpXXXXcKXFXXXXXXXXXX-64-16.png', // 飞猪（航旅）大促标
    };
    window.__MT_SWITCHER = JSON.stringify(switches);
    window.__SERVER_TS = (new Date()).getTime();
  } catch(err) {
    //pass
  }

  KISSY.config({
    packages: {
      'xtpl/views': {
        base: './xtpl/views',
        ignorePackageNameInUri: 1
      }
    },
    modules: {
      'xtpl/engine': {
        alias: 'kg/xtemplate/3.2.0/runtime'
      },
      'xtpl/io': {
        alias: 'io'
      }
    }
  });
  KISSY.use('MT/pages/home/init');
</script>
</body>
</html>
