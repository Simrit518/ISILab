package com.isilab.action;

import com.isilab.biz.NewsBiz;
import com.isilab.entity.NewsEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by Simrit on 2017/7/31.
 */
@Controller
public class NewsAction {
    @Autowired
    private NewsBiz newsBiz;
    /**
     * 显示新闻列表
     */
    @RequestMapping(value = "/news", produces = "text/html;charset=UTF-8")
    public String newsshow(
            @RequestParam(name = "page", defaultValue = "1") int page,
            ModelMap modelMap) {
        if (page < 1)
            page = 1;
        int temp = (int) newsBiz.pageCount();
        if (page > temp)
            page = temp;
        List<NewsEntity> list = newsBiz.getNewsByPage(page);
        modelMap.addAttribute("newslist", list);
        //当前页
        modelMap.addAttribute("page", page);
        //总页码
        modelMap.addAttribute("pageTotal", temp);
        return "newslist";
    }
    /**
     * 显示新闻详情
     */
    @RequestMapping(value = "/news/{id}", method = RequestMethod.GET)
    public String getNews(
            @PathVariable(name = "id") int id,
            ModelMap model
    ) {
        NewsEntity news=newsBiz.getNews(id);
        model.addAttribute("news", news);
        return "news";
    }
    /**
     * 删除新闻
     */
    @RequestMapping(value = "/newsDelete", method = RequestMethod.POST)
    @ResponseBody
    public String newsDelete(@RequestParam int id) {
        newsBiz.deleteNews(id);
        return "success";
    }
    /**
     * 跳转到修改新闻页面
     */
    @RequestMapping(value = "/newsUpdatePage")
    public String newsUpdatePage(@RequestParam int id,ModelMap modelMap) {
        NewsEntity newsEntity=newsBiz.getNews(id);
        modelMap.addAttribute("id",id);
        modelMap.addAttribute("newsEntity",newsEntity);
        modelMap.addAttribute("sliderBarNum",0);
        return "updatenews";
    }
    /**
     * 修改新闻
     */
    @RequestMapping(value = "/newsUpdate", method = RequestMethod.POST)
    @ResponseBody
    public String newsUpdate(@RequestParam int id,
                             @RequestParam String title,
                             @RequestParam String summary,
                             @RequestParam String content,
                             @RequestParam String kind) {
        NewsEntity newsEntity=newsBiz.getNews(id);
        newsEntity.setTitle(title);
        newsEntity.setSummary(summary);
        newsEntity.setContent(content);
        newsEntity.setKind(kind);
        if (newsBiz.updateNews(newsEntity))
            return "success";
        else
            return "fail";
    }
}
