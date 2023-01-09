var location="${city}";
$("#locationTxt").text("送至"+location);

var str='';
if('${sessionScope.sessionUser}'==''){
    str=str+'亲, 请<a href="workbench/totoLogin.do">登录 </a><span class="text-color-red"><a href="setting/user/toRegister.do">免费注册</a></span>'
}else{
    str=str+'${sessionScope.sessionUser.loginName} 已登录';
}
$("#isLogin").html(str);

$(".city-item").click(function (){
    var city=$(this).text();
    $("#locationTxt").text("送至"+city);
});