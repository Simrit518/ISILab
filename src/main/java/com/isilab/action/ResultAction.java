package com.isilab.action;

import com.isilab.biz.ResultBiz;
import com.isilab.entity.ResultEntity;
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
public class ResultAction {
    @Autowired
    private ResultBiz resultBiz;
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
    @RequestMapping(value = "/result/{id}", method = RequestMethod.GET)
    public String getResult(
            @PathVariable(name = "id") int id,
            ModelMap model
    ) {
        ResultEntity result=resultBiz.getResult(id);
        model.addAttribute("result", result);
        return "result";
    }
    @RequestMapping(value = "/resultDelete", method = RequestMethod.POST)
    public String resultDelete(@RequestParam int id) {
        resultBiz.deleteResult(id);
        return "test";
    }
}
