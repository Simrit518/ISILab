package com.isilab.biz;

import com.isilab.entity.DocumentEntity;

import java.util.List;

/**
 * Created by Simrit on 2017/7/31.
 */
public interface DocumentBiz {
    public void addDocument(String title,String content,String summary);
    public void deleteDocument(int id);
    public List<DocumentEntity> getAllDocument();
    public List<DocumentEntity> getLatestDocument(int number);
    DocumentEntity getDocument(int id);
    long pageCount();
    List<DocumentEntity> getDocumentByPage(int page);
}
