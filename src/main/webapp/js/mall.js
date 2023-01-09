//当鼠标放在导航条上时
//在地址上
//hover函数用法，里面存在俩个参数，一个是鼠标进入，一个是鼠标离开
$('.location,.city').hover(
	function() {
		var locatOffset = $('.location').offset();//获取坐标
		$('.city').show();//显示地址栏
		$('.city').css('left', locatOffset.left + "px");//添加样式，左端边界不变
		$('.city').css('top', (locatOffset.top+35) + "px");//添加样式，上端边界增大35用来显示所有城市
		$('.location').addClass("nav-pull-down-action");//添加鼠标变成手指样式
	},
	function(){//鼠标离开
		$('.city').hide();
		$('.location').removeClass("nav-pull-down-action");
	}
);

//放置在我的淘宝上边的下拉菜单
$('.my-shop,.my-shop-panel').hover(
	function(){
		var locatOffset = $('.my-shop').offset();
		$('.my-shop-panel').show();
		$('.my-shop-panel').css('left', locatOffset.left + "px");
		$('.my-shop-panel').css('top', (locatOffset.top+35) + "px");
		$('.my-shop').addClass("nav-pull-down-action");
		$('.my-shop').children('a').css("border-left", "1px solid #fff");
	},
	function(){
		$('.my-shop-panel').hide();
		$('.my-shop').children('a').css("border-left", "1px solid #ccc");
		$('.my-shop').removeClass("nav-pull-down-action");
	});

//幻灯片
var nowKey = 1;
$('.carousel_img[name=1]').show();
$('.icon i[name=1]').css("color", "#f00");
objTime = setInterval(Carousel,2500);//设置自动播放，2.5秒切换下一个界面


// 幻灯片
function Carousel() {
	var forKey = 1;
	nowKey++;
	//便利img标签
	$('.carousel_img').each(function(){
		//如果已显示
		if (!$(this).is(":hidden") && (nowKey-1) == forKey) {
			if (nowKey == 6) {
				nowKey = 1;
				$('.carousel_img[name=1]').fadeIn(800);
				console.log(nowKey);
			}else{
				$(this).next('img').fadeIn(800);
			}
			$(this).fadeOut(800);
		}
		forKey++;
	});
	//下面红点跟着幻灯片动
	if (nowKey == 1) {
		$(".icon i[name=1]").css("color", "#f00");
		$(".icon i[name=5]").css("color", "#fff");
	}else{
		$(".icon i[name="+nowKey+"]").css("color", "#f00");
		$(".icon i[name="+(nowKey-1)+"]").css("color", "#fff");
	}
}

//鼠标放在幻灯片上面暂停播放
$('.slide').hover(
	function(){
		clearInterval(objTime);//清除自动播放功能
		$('.prevNext').show();//显示左右滑动的按钮
	},
	function(){
		//鼠标离开，则重新设置自动播放时间。然后将左右滑动的按钮给隐藏
		objTime = setInterval(Carousel,2500);
		$('.prevNext').hide();
	}
);

//点击幻灯片的小圆点
$('.icon i').hover(function(){
		//先消失
		tempKey = parseInt($(this).attr("name"));
		$(".icon i[name="+nowKey+"]").css("color", "#fff");
		//如果选中的和上一个不一样时
		if (tempKey != nowKey)
			$(".carousel_img[name="+nowKey+"]").fadeOut(800);
		nowKey =tempKey; 
		//再出现
		$(this).css("color", "#f00");
		$(".carousel_img[name="+nowKey+"]").fadeIn(800);
		console.log(nowKey);
	},function(){});

//点击上一张下一张
function PrevNextClick(flag){
	if (flag == 1){
		if (nowKey>1) {
			$(".icon i[name="+nowKey+"]").css("color", "#fff");//圆点设置为白色
			$(".carousel_img[name="+nowKey+"]").fadeOut(800);
			nowKey--;
		}
	}
	else if (flag == 2){
		if (nowKey<5) {
			$(".icon i[name="+nowKey+"]").css("color", "#fff");
			$(".carousel_img[name="+nowKey+"]").fadeOut(800);
			nowKey++;
		}
	}
	$(".icon i[name="+nowKey+"]").css("color", "#f00");
	$(".carousel_img[name="+nowKey+"]").fadeIn(800);
}


//显示商品详细信息
var navIndex = -1;
$('.nav-side li,.detail-item-panel').hover(
	function(){
		var slideOffset = $('.nav-side').offset();//获取尺寸
		navIndex = $('.nav-side li').index($(this));
		if (navIndex%2) {
			$('.panel-1').show();//奇数页显示panel-1的div信息
		}else{
			$('.panel-2').show();//偶数页显示panel-2的div信息
		}
		
		$('.detail-item-panel').css("top",slideOffset.top + "px");
		$('.detail-item-panel').css("left",(slideOffset.left + 200) + "px");
	},function(){
		if (navIndex%2) {
			$('.panel-1').hide();
		}else{
			$('.panel-2').hide();
		}
	});



setInterval(countDowm,1000);//设置定时装置，每隔1秒就执行当前的函数