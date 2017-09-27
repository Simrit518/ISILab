package com.isilab.biz;

import com.isilab.entity.NewsEntity;

import javax.enterprise.inject.New;
import java.io.Serializable;
import java.util.List;

/**
 * Created by Simrit on 2017/7/28.
 */
public interface NewsBiz {
    public void addNews(String title,String content,String summary,String kind);
    public boolean updateNews(NewsEntity newsEntity);
    public void deleteNews(int id);
    public List<NewsEntity> getAllNews();
    public List<NewsEntity> getLatestNews(int number);
    NewsEntity getNews(int id);
    long pageCount();
    List<NewsEntity> getNewsByPage(int page);
}
