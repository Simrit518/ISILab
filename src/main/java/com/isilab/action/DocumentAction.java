package com.isilab.action;

import com.isilab.biz.DocumentBiz;
import com.isilab.entity.DocumentEntity;
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
public class DocumentAction {
    @Autowired
    private DocumentBiz documentBiz;
    /**
     * 显示学术文献列表
     */
    @RequestMapping(value = "/document", produces = "text/html;charset=UTF-8")
    public String documentshow(
            @RequestParam(name = "page", defaultValue = "1") int page,
            ModelMap modelMap) {
        if (page < 1)
            page = 1;
        int temp = (int) documentBiz.pageCount();
        if (page > temp)
            page = temp;
        List<DocumentEntity> list = documentBiz.getDocumentByPage(page);
        modelMap.addAttribute("documentlist", list);
        modelMap.addAttribute("page", page);
        modelMap.addAttribute("pageTotal", temp);
        return "doclist";
    }
    /**
     * 显示学术文献详情
     */
    @RequestMapping(value = "/document/{id}", method = RequestMethod.GET)
    public String getDocument(
            @PathVariable(name = "id") int id,
            ModelMap model
    ) {
        DocumentEntity document=documentBiz.getDocument(id);
        model.addAttribute("document", document);
        return "document";
    }
    /**
     * 删除学术文献
     */
    @RequestMapping(value = "/docDelete", method = RequestMethod.POST)
    @ResponseBody
    public String documentDelete(@RequestParam int id) {
        documentBiz.deleteDocument(id);
        return TypeTool.CODE_RETURN.get(1).toString();
    }
}
