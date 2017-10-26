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
    /**
     * 显示学术研究列表
     */
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
    /**
     * 显示学术研究详情
     */
    @RequestMapping(value = "/academics/{id}", method = RequestMethod.GET)
    public String getAcademics(
            @PathVariable(name = "id") int id,
            ModelMap model
    ) {
        AcademicsEntity academics=academicsBiz.getAcademics(id);
        model.addAttribute("academics", academics);
        return "academics";
    }
    /**
     * 删除学术研究
     */
    @RequestMapping(value = "/acaDelete", method = RequestMethod.POST)
    @ResponseBody
    public String academicsDelete(@RequestParam int id) {
        academicsBiz.deleteAcademics(id);
        return "success";
    }
    /**
     * 跳转到更改页面
     */
    @RequestMapping(value = "/acaUpdatePage")
    public String acaUpdatePage(@RequestParam int id,ModelMap modelMap) {
        AcademicsEntity academicsEntity=academicsBiz.getAcademics(id);
        modelMap.addAttribute("id",id);
        modelMap.addAttribute("academicsEntity",academicsEntity);
        modelMap.addAttribute("sliderBarNum",0);
        return "updateaca";
    }
    /**
     * 更改
     */
    @RequestMapping(value = "/acaUpdate", method = RequestMethod.POST)
    @ResponseBody
    public String acaUpdate(@RequestParam int id,
                             @RequestParam String title,
                             @RequestParam String summary,
                             @RequestParam String content) {
        AcademicsEntity academicsEntity=academicsBiz.getAcademics(id);
        academicsEntity.setTitle(title);
        academicsEntity.setSummary(summary);
        academicsEntity.setContent(content);
        if (academicsBiz.updateAcademics(academicsEntity))
            return "success";
        else
            return "fail";
    }
}
