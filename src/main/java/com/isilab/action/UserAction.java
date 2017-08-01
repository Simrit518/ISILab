package com.isilab.action;

import com.isilab.biz.UserBiz;
import com.isilab.entity.UserEntity;
import com.isilab.tool.LoginTool;
import com.isilab.tool.ParameterTool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by Simrit on 2017/8/1.
 */
@Controller
public class UserAction {
    @Autowired
    private UserBiz userBiz;
    @RequestMapping(value="/login", method= RequestMethod.POST)
    public String login(
            @RequestParam(name="usn")String usn,
            @RequestParam(name="pwd")String pwd,
            @RequestParam(name="isCookie", defaultValue="0")int isCookie,
            HttpServletResponse response,
            HttpSession httpSession,
            ModelMap model){

        UserEntity user = userBiz.getUser(usn);

        //生成3个cookie
        Cookie checkCookie = new Cookie("isCookieNFC", isCookie == 0 ? "0" : "1");
        Cookie nameCoookie = new Cookie("nameCookieNFC", isCookie == 0 ? null : usn);
        Cookie pwdCookie = new Cookie("pwdCookieNFC", isCookie == 0 ? null : pwd);
        checkCookie.setMaxAge(ParameterTool.COOKIE_PIRIED_DEFAULT);
        nameCoookie.setMaxAge(ParameterTool.COOKIE_PIRIED_DEFAULT);
        pwdCookie.setMaxAge(ParameterTool.COOKIE_PIRIED_DEFAULT);

        if(user == null || !user.getPassword().equals(pwd) || user.getLevel() != ParameterTool.USER_LEVEL_ADMIN){
            return "login";
        }
        else{
            httpSession.setAttribute("user", user);
            response.addCookie(checkCookie);
            response.addCookie(nameCoookie);
            response.addCookie(pwdCookie);
            return "redirect:/admin";
        }
    }

    @RequestMapping(value = "/adminlogin")
    public String admin() {
            return "login";
    }
}
