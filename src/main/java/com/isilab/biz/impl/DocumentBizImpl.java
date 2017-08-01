package com.isilab.biz.impl;

import com.isilab.biz.DocumentBiz;
import com.isilab.dao.DocumentDao;
import com.isilab.entity.DocumentEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * Created by Simrit on 2017/7/31.
 */
@Service("documentService")
@Transactional
public class DocumentBizImpl implements DocumentBiz {
    @Autowired
    private DocumentDao documentDao;
    public void addDocument(String title,String content,String summary) {
        DocumentEntity documentEntity=new DocumentEntity(title,content,new Date(new java.util.Date().getTime()),summary);
        documentDao.save(documentEntity);
    }
    public void deleteDocument(int id){
        documentDao.delete(documentDao.get(id));
    }
    public List<DocumentEntity> getAllDocument() {
        return documentDao.getAll();
    }

    public List<DocumentEntity> getLatestDocument(int number) {
        return documentDao.getLatest(number);
    }
    @Transactional
    public DocumentEntity getDocument(int id){
        return documentDao.get(id);
    }
    @Transactional
    public long pageCount(){
        List<DocumentEntity> list=documentDao.getAll();
        if (list==null||list.size()==1)
            return 1;
        long temp=list.size();
        if (temp%5!=0||temp==0)
            return temp/5+1;
        return temp/5;
    }
    @Transactional
    public List<DocumentEntity> getDocumentByPage(int page){
        long count =pageCount();
        if (page<0)
            page=0;
        if (page>count)
            page=(int)count;
        List<DocumentEntity> list=documentDao.pagedByHql(page);
        return list;
    }
}
