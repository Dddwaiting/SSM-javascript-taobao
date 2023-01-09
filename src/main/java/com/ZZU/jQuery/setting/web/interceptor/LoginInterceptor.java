package com.ZZU.jQuery.setting.web.interceptor;

import com.ZZU.jQuery.common.contants.Contants;
import com.ZZU.jQuery.setting.pojo.User;
import org.apache.ibatis.plugin.Interceptor;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        //如果登录成功，会将user对象做传递给Session作用域中，判断user对象是否为空
        //获取session
        HttpSession session = httpServletRequest.getSession();
        User user= (User) session.getAttribute(Contants.Session_User);

        //判断user对象是否为空
        if(user==null){
            //进行重定向 如果是自己手动发的重定向需要加入/项目名/  而httpServletRequest.getContextPath()就是获得项目名
            httpServletResponse.sendRedirect(httpServletRequest.getContextPath()+"/workbench/totoLogin.do");
            return false;
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
