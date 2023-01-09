package com.ZZU.jQuery.workbench.web.controller;

import com.ZZU.jQuery.common.contants.Contants;
import com.ZZU.jQuery.common.pojo.ReturnObject;
import com.ZZU.jQuery.common.utils.DateUtils;
import com.ZZU.jQuery.common.utils.UUIDUtils;
import com.ZZU.jQuery.setting.pojo.User;
import com.ZZU.jQuery.workbench.pojo.Container;
import com.ZZU.jQuery.workbench.service.ContainerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;

@Controller
public class WorkbenchIndex {

    @Autowired
    private ContainerService containerService;

    @RequestMapping("/workbench/toMain.do")
    public String toMain(){
        return "workbench/index";
    }

    @RequestMapping("/workbench/totoLogin.do")
    public String totoLogin(){
        return "setting/user/login";
    }

    @RequestMapping("/setting/user/toRegister.do")
    public String toRegister(){
        return "setting/user/register";
    }

    @RequestMapping("/workbench/SearchPhone.do/{city}")
    public String SearchPhone(@PathVariable("city") String city, Model model){
        model.addAttribute("city",city);
        return "workbench/search";
    }

    @RequestMapping("/workbench/itemDetail.do/{city}")
    public String itemDetail(@PathVariable("city") String city,Model model){
        model.addAttribute("city",city);
        return "workbench/item_detail";
    }


    @RequestMapping("/workbench/carShow.do/{city}")
    public String carShow(@PathVariable("city") String city,Model model){
        model.addAttribute("city",city);
        return "workbench/car";
    }

    @RequestMapping("/workbench/payMoney.do/{city}")
    public String payMoney(@PathVariable("city") String city,Model model){
        model.addAttribute("city",city);
        return "workbench/pay";
    }

    @RequestMapping("/workbench/paySuccess.do/{city}")
    public String paySuccess(@PathVariable("city") String city,Model model){
        model.addAttribute("city",city);
        return "workbench/success";
    }

    @RequestMapping("/workbench/feedBack.do/{city}")
    public String feedBack(@PathVariable("city") String city,Model model){
        model.addAttribute("city",city);
        return "workbench/feedback";
    }

    @RequestMapping("/workbench/getContainer.do")
    public @ResponseBody Object getContainer(String textCon, String imageName, HttpSession session){
        ReturnObject returnObject=new ReturnObject();
        User user= (User) session.getAttribute(Contants.Session_User);
        Container container=new Container();
        container.setContainer(textCon);
        container.setDate(DateUtils.formatDateTime(new Date()));
        container.setId(UUIDUtils.getUUID());
        container.setName(user.getUsername());
        container.setImageId(imageName);
        try {
            containerService.addContainer(container);
            returnObject.setCode(Contants.Return_Object_Code_Success);
            returnObject.setMessage("提交成功");
        }catch (Exception e){
            returnObject.setCode(Contants.Return_Object_Code_Fail);
            returnObject.setMessage("系统正忙...请稍后");
        }
        return returnObject;
    }

    //测试向服务器上传文件，需要在SpringMVC中生成一个bean对象CommonsMultipartResolver
    //bean对象的id必须是multipartResolver
    @RequestMapping("/workbench/activity/testUploadFile.do")
    public @ResponseBody Object testUploadFile(MultipartFile activityFile,Model model)  {
        //获取上传的文件名字
        String originalFilename = activityFile.getOriginalFilename();
        //将上传的文件名字拼接到保存在服务器的文件
        File file = new File("C:\\Users\\dddwaiting\\Desktop\\javascript\\软件开发新技术大作业第二版\\软件开发新技术大作业第二版\\照片",originalFilename);
        ReturnObject returnObject=new ReturnObject();
        //将上传的文件转化到服务器中
        try {
            activityFile.transferTo(file);
            returnObject.setCode(Contants.Return_Object_Code_Success);
            returnObject.setMessage("上传成功");
            model.addAttribute("originalFilename",originalFilename);
        } catch (IOException e) {
            e.printStackTrace();
            returnObject.setCode(Contants.Return_Object_Code_Fail);
            returnObject.setMessage("系统正忙...请稍后");
        }

        return returnObject;
    }

    @RequestMapping("/workbench/toPeoPle.do")
    public String toPeoPle(){
        return "workbench/people";
    }
}
