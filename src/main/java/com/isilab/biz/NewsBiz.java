package com.isilab.biz;

import com.isilab.entity.NewsEntity;

import java.util.List;

/**
 * Created by Simrit on 2017/7/28.
 */
public interface NewsBiz {
    public void addNews(String title,String content);
    public String getAllNews();
    public List<NewsEntity> getLatestNews();
}
