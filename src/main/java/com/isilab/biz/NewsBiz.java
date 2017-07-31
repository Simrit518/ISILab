package com.isilab.biz;

import com.isilab.entity.NewsEntity;

import java.io.Serializable;
import java.util.List;

/**
 * Created by Simrit on 2017/7/28.
 */
public interface NewsBiz {
    public void addNews(String title,String content,String summary,String kind);
    public void updateNews(String id,String title,String content);
    public void deleteNews(int id);
    public List<NewsEntity> getAllNews();
    public List<NewsEntity> getLatestNews();
    NewsEntity getNews(int id);
    long pageCount();
    List<NewsEntity> getNewsByPage(int page);
}
