package com.isilab.action;

import com.isilab.biz.AcademicsBiz;
import com.isilab.biz.DocumentBiz;
import com.isilab.biz.NewsBiz;
import com.isilab.biz.ResultBiz;
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
    @Autowired
    private AcademicsBiz academicsBiz;
    @Autowired
    private ResultBiz resultBiz;
    @Autowired
    private DocumentBiz documentBiz;

    @RequestMapping(value = "", produces = "text/html;charset=UTF-8")
    public String init(ModelMap modelMap) {
        modelMap.addAttribute("newslist", newsBiz.getLatestNews());
//        modelMap.addAttribute("academicslist", academicsBiz.getLatestAcademics());
//        modelMap.addAttribute("resultlist", resultBiz.getLatestResult());
//        modelMap.addAttribute("documentlist", documentBiz.getLatestDocument());
        return "index";
    }


    @RequestMapping(value = "/adminnews", produces = "text/html;charset=UTF-8")
    public String adnewsshow(
            @RequestParam(name = "page", defaultValue = "1") int page,
            ModelMap modelMap) {
        if (page < 1)
            page = 1;
        int temp = (int) newsBiz.pageCount();
        if (page > temp)
            page = temp;
        List<NewsEntity> list = newsBiz.getAllNews();
        modelMap.addAttribute("newslist", list);
        modelMap.addAttribute("page", page);
        modelMap.addAttribute("pageTotal", temp);
        return "adnewslist";
    }


    @RequestMapping(value = "/newsAdd", method = RequestMethod.POST)
    public String newsPublish(@RequestParam String title, @RequestParam String content, @RequestParam String summary, @RequestParam String kind) {
        switch (kind) {
            case "news":
                newsBiz.addNews(title, content, summary, kind);
                break;
            case "academics":
                academicsBiz.addAcademics(title, content, summary);
                break;
            case "result":
                resultBiz.addResult(title, content, summary);
                break;
            case "document":
                documentBiz.addDocument(title,content,summary);
                break;
        }
        return "test";
    }
}