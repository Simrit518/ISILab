package com.isilab.action;

import com.isilab.biz.NewsBiz;
import com.isilab.entity.NewsEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
    @RequestMapping(value = "/news",produces="text/html;charset=UTF-8")
    public String newsshow(
            @RequestParam(name="page",defaultValue = "1")int page,
            ModelMap modelMap){
        if(page < 1)
            page = 1;
        int temp = (int)newsBiz.pageCount();
        if(page > temp)
            page = temp;
        List<NewsEntity> list=newsBiz.getNewsByPage(page);
        modelMap.addAttribute("newslist",list);
        modelMap.addAttribute("page",page);
        modelMap.addAttribute("pageTotal",temp);
        return "news";
    }
//    @RequestMapping(value="/getUser/{id}", method=RequestMethod.GET)
//    //@ResponseBody
//    public String getUser(
//            @PathVariable(name="id")String id,
//            ModelMap model
//            ){
//
//        model.addAttribute("user", user);
//
//        return "test";
//    }

    @RequestMapping(value = "/newsAdd",method= RequestMethod.POST)
    public String newsPublish(@RequestParam String title, @RequestParam String content){
        newsBiz.addNews(title,content);
        return "test";
    }
    @RequestMapping(value = "/newsDelete",method = RequestMethod.POST)
    public String newsDelete(@RequestParam String id){
        newsBiz.deleteNews(id);
        return "test";
    }
}