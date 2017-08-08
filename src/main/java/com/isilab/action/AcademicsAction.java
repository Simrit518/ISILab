package com.isilab.action;

import com.isilab.biz.AcademicsBiz;
import com.isilab.entity.AcademicsEntity;
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
public class AcademicsAction {
    @Autowired
    private AcademicsBiz academicsBiz;
    @RequestMapping(value = "/academics", produces = "text/html;charset=UTF-8")
    public String academicsshow(
            @RequestParam(name = "page", defaultValue = "1") int page,
            ModelMap modelMap) {
        if (page < 1)
            page = 1;
        int temp = (int) academicsBiz.pageCount();
        if (page > temp)
            page = temp;
        List<AcademicsEntity> list = academicsBiz.getAcademicsByPage(page);
        modelMap.addAttribute("academicslist", list);
        modelMap.addAttribute("page", page);
        modelMap.addAttribute("pageTotal", temp);
        return "acalist";
    }
    @RequestMapping(value = "/academics/{id}", method = RequestMethod.GET)
    public String getAcademics(
            @PathVariable(name = "id") int id,
            ModelMap model
    ) {
        AcademicsEntity academics=academicsBiz.getAcademics(id);
        model.addAttribute("academics", academics);
        return "academics";
    }
    @RequestMapping(value = "/acaDelete", method = RequestMethod.POST)
    @ResponseBody
    public String academicsDelete(@RequestParam int id) {
        academicsBiz.deleteAcademics(id);
        return TypeTool.CODE_RETURN.get(1).toString();
    }
}
