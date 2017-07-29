package com.isilab.action;

import com.isilab.biz.NewsBiz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Simrit on 2017/7/28.
 */
@Controller
@RequestMapping(value = "")
public class MainAction {

    @Autowired
    private NewsBiz newsBiz;

    @RequestMapping(value = "",produces="text/html;charset=UTF-8")
    public String init(ModelMap modelMap){
        modelMap.addAttribute("newslist",newsBiz.getLatestNews());
        return "index";
    }
    @RequestMapping(value = "/newsPublish",method= RequestMethod.POST)
    public String newsPublish(@RequestParam String title, @RequestParam String content){
        newsBiz.addNews(title,content);
        return "test";
    }

}