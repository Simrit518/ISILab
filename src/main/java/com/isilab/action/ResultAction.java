package com.isilab.action;

import com.isilab.biz.ResultBiz;
import com.isilab.entity.ResultEntity;
import com.isilab.tool.TypeTool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by Simrit on 2017/7/31.
 */
@Controller
public class ResultAction {
    @Autowired
    private ResultBiz resultBiz;
    /**
     * 显示成果展示列表
     */
    @RequestMapping(value = "/result", produces = "text/html;charset=UTF-8")
    public String resultshow(
            @RequestParam(name = "page", defaultValue = "1") int page,
            ModelMap modelMap) {
        if (page < 1)
            page = 1;
        int temp = (int) resultBiz.pageCount();
        if (page > temp)
            page = temp;
        List<ResultEntity> list = resultBiz.getResultByPage(page);
        modelMap.addAttribute("resultlist", list);
        modelMap.addAttribute("page", page);
        modelMap.addAttribute("pageTotal", temp);
        return "reslist";
    }
    /**
     * 显示成果展示详情
     */
    @RequestMapping(value = "/result/{id}", method = RequestMethod.GET)
    public String getResult(
            @PathVariable(name = "id") int id,
            ModelMap model
    ) {
        ResultEntity result=resultBiz.getResult(id);
        model.addAttribute("result", result);
        return "result";
    }
    /**
     * 删除成果展示
     */
    @RequestMapping(value = "/resDelete", method = RequestMethod.POST)
    @ResponseBody
    public String resultDelete(@RequestParam int id) {
        resultBiz.deleteResult(id);
        return "success";
    }

    /**
     * 跳转到更改页面
     */
    @RequestMapping(value = "/resUpdatePage")
    public String acaUpdatePage(@RequestParam int id,ModelMap modelMap) {
        ResultEntity resultEntity=resultBiz.getResult(id);
        modelMap.addAttribute("id",id);
        modelMap.addAttribute("resultEntity",resultEntity);
        modelMap.addAttribute("sliderBarNum",0);
        return "updateres";
    }
    /**
     * 更改
     */
    @RequestMapping(value = "/resUpdate", method = RequestMethod.POST)
    @ResponseBody
    public String acaUpdate(@RequestParam int id,
                            @RequestParam String title,
                            @RequestParam String summary,
                            @RequestParam String content,
                            @RequestParam String kind) {
        ResultEntity resultEntity=resultBiz.getResult(id);
        resultEntity.setTitle(title);
        resultEntity.setSummary(summary);
        resultEntity.setContent(content);
        if (resultBiz.updateResult(resultEntity))
            return "success";
        else
            return "fail";
    }
}
