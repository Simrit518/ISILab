package com.isilab.action;

import com.isilab.biz.DocumentBiz;
import com.isilab.entity.DocumentEntity;
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
public class DocumentAction {
    @Autowired
    private DocumentBiz documentBiz;
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
    @RequestMapping(value = "/document/{id}", method = RequestMethod.GET)
    public String getDocument(
            @PathVariable(name = "id") int id,
            ModelMap model
    ) {
        DocumentEntity document=documentBiz.getDocument(id);
        model.addAttribute("document", document);
        return "document";
    }
    @RequestMapping(value = "/documentDelete", method = RequestMethod.POST)
    public String documentDelete(@RequestParam int id) {
        documentBiz.deleteDocument(id);
        return "test";
    }
}
