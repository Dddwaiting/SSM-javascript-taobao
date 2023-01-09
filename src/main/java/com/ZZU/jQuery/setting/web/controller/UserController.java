package com.ZZU.jQuery.setting.web.controller;

import com.ZZU.jQuery.common.contants.Contants;
import com.ZZU.jQuery.common.pojo.ReturnObject;
import com.ZZU.jQuery.common.utils.DateUtils;
import com.ZZU.jQuery.common.utils.UUIDUtils;
import com.ZZU.jQuery.setting.pojo.User;
import com.ZZU.jQuery.setting.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
public class UserController {

    @Autowired
    private UserService service;

    //跳转到登录界面
    @RequestMapping("/setting/user/toLogin.do")
    public String toLogin(){
        return "workbench/index";
    }


    @RequestMapping("/setting/user/login.do")
    public @ResponseBody Object login(String userName, String password, String isRemember, HttpSession session, HttpServletResponse response){
        //封装参数
        Map<String,Object> map=new HashMap<>();
        map.put("userName",userName);
        map.put("password",password);
        //发送请求
        User user = service.queryUserByUserNameAndPassword(map);
        ReturnObject returnObject=new ReturnObject();
        if(user==null){
            returnObject.setCode(Contants.Return_Object_Code_Fail);
            returnObject.setMessage("账号或密码错误");
        }else if(user.getLockState().equals("1")){
            returnObject.setCode(Contants.Return_Object_Code_Fail);
            returnObject.setMessage("该账号已经被封禁");
        }
        else{
            session.setAttribute(Contants.Session_User,user);
            returnObject.setCode(Contants.Return_Object_Code_Success);
            if("true".equals(isRemember)){
                //创建Cookie，为Cookie提供键和值 其中值为用户的账号
                Cookie c1=new Cookie("Cookie_Act",userName);
                c1.setMaxAge(10*24*60*60);//设置最大存活期限，以秒为单位
                response.addCookie(c1);//向浏览器添加Cookie

                //创建Cookie，为Cookie提供键和值 其中值为用户的密码
                Cookie c2=new Cookie("Cookie_Pwd",password);
                c1.setMaxAge(10*24*60*60);//设置最大存活期限，以秒为单位
                response.addCookie(c2);//向浏览器添加Cookie
            }
            else{
                //如果用户登录没有勾选十天内免登录，则可以创建Cookie然后将最大存活期限设置为0
                //但是必须要保证跟勾选免登录时候的Cookie的key保持一直，value可以随便取
                Cookie c1=new Cookie("Cookie_Act","1");
                response.addCookie(c1);//向浏览器添加Cookie

                Cookie c2=new Cookie("Cookie_Pwd","1");
                c1.setMaxAge(0);//设置最大存活期限，以秒为单位
                response.addCookie(c2);//向浏览器添加Cookie
            }
        }
        return returnObject;
    }

    @RequestMapping("/setting/user/insertUser.do")
    public @ResponseBody Object insertUser(String userName,String password){
        //封装参数
        Map<String ,Object> map=new HashMap<>();
        map.put("userName",userName);
        map.put("password",password);
        map.put("id", UUIDUtils.getUUID());
        map.put("createTime", DateUtils.formatDate(new Date()));
        map.put("localState","0");
        map.put("loginName",userName);
        //发送请求
        int ret = service.insertUserByMap(map);
        ReturnObject returnObject=new ReturnObject();
        if(ret>0){
            returnObject.setCode(Contants.Return_Object_Code_Success);
            returnObject.setMessage("注册成功");
        }else{
            returnObject.setCode(Contants.Return_Object_Code_Fail);
            returnObject.setMessage("系统正忙...请稍后重试");
        }
        return returnObject;
    }

    //退出系统
    @RequestMapping("/setting/exit")
    public String loginOut(HttpServletResponse response,HttpSession session){
        //清除Cookie
        Cookie c1=new Cookie("Cookie_Act","1");
        c1.setMaxAge(0);//设置最大存活期限，以秒为单位
        response.addCookie(c1);//向浏览器添加Cookie

        Cookie c2=new Cookie("Cookie_Pwd","1");
        c1.setMaxAge(0);//设置最大存活期限，以秒为单位
        response.addCookie(c2);//向浏览器添加Cookie

        //清除Session
        session.invalidate();
        return "redirect:/";
    }


}
