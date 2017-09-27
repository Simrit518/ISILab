package com.isilab.biz.impl;

import com.isilab.biz.NewsBiz;
import com.isilab.dao.NewsDao;
import com.isilab.entity.NewsEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import javax.enterprise.inject.New;
import java.util.Date;
import java.util.List;

/**
 * Created by Simrit on 2017/7/28.
 */
@Service("newsService")
@Transactional
public class NewsBizImpl implements NewsBiz {
    @Autowired
    private NewsDao newsDao;
    public void addNews(String title,String content,String summary,String kind) {
        NewsEntity newsEntity=new NewsEntity(title,content,new Date(new java.util.Date().getTime()),summary,kind);
        newsDao.save(newsEntity);
    }
    public void deleteNews(int id){
        newsDao.delete(newsDao.get(id));
    }
    public boolean updateNews(NewsEntity newsEntity){
        try {
            newsDao.update(newsEntity);
            return true;
        }catch (Exception e){
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            return false;
        }

    }
    public List<NewsEntity> getAllNews() {
        return newsDao.getAll();
    }

    public List<NewsEntity> getLatestNews(int number) {
        return newsDao.getLatest(number);
    }
    @Transactional
    public NewsEntity getNews(int id){
        return newsDao.get(id);
    }
    @Transactional
    public long pageCount(){
        List<NewsEntity> list=newsDao.getAll();
        if (list==null||list.size()==1)
            return 1;
        long temp=list.size();
        if (temp%20!=0||temp==0)
            return temp/20+1;
        return temp/20;
    }
    @Transactional
    public List<NewsEntity> getNewsByPage(int page){
        long count =pageCount();
        if (page<0)
            page=0;
        if (page>count)
            page=(int)count;
        List<NewsEntity> list=newsDao.pagedByHql(page);
        return list;
    }
}
