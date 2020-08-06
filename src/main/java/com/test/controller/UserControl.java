package com.test.controller;

import com.test.po.User;
import com.test.po.UserExample;

import com.test.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@SessionAttributes({"username","uid","userList","adminname"})
@Controller
public class UserControl{
    @Autowired
    private UserService userService;
    @RequestMapping("/login")
    public String toLogin(){
        return "login";
    }
    @RequestMapping("/register")
    public String toRegister(){
        return "register";
    }
    @RequestMapping("/index")
    public String toIndex(){
        return "index";
    }
    @RequestMapping("/backLogin")
    public String toBackLogin(){
        return "backlogin";
    }

    @RequestMapping("/add_user")
    public String addUser(){
        return "add_user";
    }
    @RequestMapping("/update_user")
    public String updateUser(Integer uid,ModelMap map){
        User user = userService.selectByPrimaryKey(uid);
        map.addAttribute("user",user);
        return "modify_user";
    }
    @RequestMapping("/user_center_info")
    public String userCenterInfo(){
            return "user_center_info";
    }
    @RequestMapping("/user_center_order")
    public String userCenterOrder(){
        return "user_center_order";
    }
    @RequestMapping("/user_center_site")
    public String userCenterSite(){
        return "user_center_site";
    }
    @RequestMapping("/login.do")
    public String login(HttpServletRequest req,User user, ModelMap map){
        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andUsernameEqualTo(user.getUsername());
        criteria.andPasswordEqualTo(user.getPassword());
        List<User> userList = userService.selectByExample(userExample);
        if (!userList.isEmpty()){
            User user0 = userList.get(0);
            map.addAttribute("uid",user0.getUid());
            map.addAttribute("username",user0.getUsername());

            return "forward:toIndex.do";
        }else {
            String msg="用户名或密码错误，请重新输入";
            map.addAttribute("msg",msg);
            return "login";
        }
    }
    @RequestMapping("/backLogin.do")
    public String backLogin(HttpServletRequest req,User user, ModelMap map){
        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andUsernameEqualTo(user.getUsername());
        criteria.andPasswordEqualTo(user.getPassword());
        List<User> userList = userService.selectByExample(userExample);
        if (!userList.isEmpty()){
            User user0=userList.get(0);
            map.addAttribute("adminname",user0.getUsername());
            return "redirect:user_list";
        }else {
            String msg="用户名或密码错误，请重新输入";
            map.addAttribute("msg",msg);
            return "backlogin";
        }
    }

    @RequestMapping(value = "/register.do",method = RequestMethod.POST,produces = "text/plain;charset=UTF-8")
    public String register(User user){
        int i = userService.insertSelective(user);
        if(i==1){
            return "redirect:login";
        }else{
            return null;
        }

    }
    @RequestMapping(value = "/add_user.do",method = RequestMethod.POST,produces = "text/plain;charset=UTF-8")
    public String addUser(User user){
        int i = userService.insertSelective(user);
        if(i==1){
            return "redirect:user_list";
        }else{
            return null;
        }

    }
    @RequestMapping(value = "/update_user.do",method = RequestMethod.POST,produces = "text/plain;charset=UTF-8")
    public String updateUser(User user){
        int i = userService.updateByPrimaryKeySelective(user);
        if(i==1){
            return "redirect:user_list";
        }else{
            return null;
        }

    }
    @RequestMapping("/user_list")
    public String selectUser(ModelMap map){
        List<User> userList = userService.selectByExample(new UserExample());
        map.addAttribute("userList",userList);
        return "manage_user";
    }
    @RequestMapping("/deleteUser")
    public String deleteUser(Integer uid,ModelMap map){
        int i = userService.deleteByPrimaryKey(uid);
        if (i==1){
            return "redirect:user_list";
        }else{
            return null;
        }

    }
}
