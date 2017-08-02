package com.isilab.action;

import com.isilab.biz.NewsBiz;
import com.isilab.entity.NewsEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by Simrit on 2017/7/31.
 */
@Controller
public class NewsAction {
    @Autowired
    private NewsBiz newsBiz;
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
    @RequestMapping(value = "/news/{id}", method = RequestMethod.GET)
    public String getNews(
            @PathVariable(name = "id") int id,
            ModelMap model
    ) {
        NewsEntity news=newsBiz.getNews(id);
        model.addAttribute("news", news);
        return "news";
    }
    @RequestMapping(value = "/newsDelete", method = RequestMethod.POST)
    public String newsDelete(@RequestParam int id) {
        newsBiz.deleteNews(id);
        return "test";
    }
}
