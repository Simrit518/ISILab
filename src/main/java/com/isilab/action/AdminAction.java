package com.isilab.action;

import com.isilab.biz.AcademicsBiz;
import com.isilab.biz.DocumentBiz;
import com.isilab.biz.NewsBiz;
import com.isilab.biz.ResultBiz;
import com.isilab.entity.NewsEntity;
import com.isilab.tool.LoginTool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Simrit on 2017/8/1.
 */
@Controller
public class AdminAction {
    @Autowired
    private NewsBiz newsBiz;
    @Autowired
    private AcademicsBiz academicsBiz;
    @Autowired
    private ResultBiz resultBiz;
    @Autowired
    private DocumentBiz documentBiz;
    @RequestMapping(value = "/adminnews", produces = "text/html;charset=UTF-8")
    public String adnewsshow(
            @RequestParam(name = "page", defaultValue = "1") int page,
            HttpSession httpSession,
            ModelMap modelMap) {
        if(!LoginTool.isLogin(httpSession))
            return "login";
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
    public String newsPublish(
            @RequestParam String title,
            @RequestParam String content,
            @RequestParam String summary,
            @RequestParam String kind,
            HttpSession httpSession) {
        if (!LoginTool.isLogin(httpSession))
            return "login";
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
                documentBiz.addDocument(title, content, summary);
                break;
        }
        return "test";
    }

    @RequestMapping(value = "/admin")
    public String admin(HttpSession httpSession) {
        if (!LoginTool.isLogin(httpSession))
            return "login";
        else
            return "admin";
    }
}
