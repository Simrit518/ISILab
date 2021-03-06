package com.isilab.action;

import com.isilab.biz.AcademicsBiz;
import com.isilab.biz.DocumentBiz;
import com.isilab.biz.NewsBiz;
import com.isilab.biz.ResultBiz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

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
    /**
     * 主页内容渲染
     */
    @RequestMapping(value = "", produces = "text/html;charset=UTF-8")
    public String init(ModelMap modelMap) {
        modelMap.addAttribute("newslist", newsBiz.getLatestNews(6));
        modelMap.addAttribute("academicslist", academicsBiz.getLatestAcademics(3));
        modelMap.addAttribute("resultlist", resultBiz.getLatestResult(3));
        modelMap.addAttribute("documentlist", documentBiz.getLatestDocument(3));
        return "index";
    }
    /**
     * 跳转到科研人员
     */
    @RequestMapping(value = "/profilelist", produces = "text/html;charset=UTF-8")
    public String profilelist(){
        return "profilelist";
    }
    /**
     * 跳转到实验室概况
     */
    @RequestMapping(value = "/introduction", produces = "text/html;charset=UTF-8")
    public String introduction(){
        return "introduction";
    }
}