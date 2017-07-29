package com.isilab.biz;

import com.isilab.dao.BaseDao;
import com.isilab.dao.NewsDao;
import com.isilab.entity.NewsEntity;
import com.isilab.tool.StrToJson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * Created by Simrit on 2017/7/28.
 */
@Service("newsService")
@Transactional
public class NewsBizImpl implements NewsBiz{
    @Autowired
    private NewsDao newsDao;
    public void addNews(String title,String content) {
        NewsEntity newsEntity=new NewsEntity(title,content,new Date(new java.util.Date().getTime()));
        newsDao.save(newsEntity);
    }

    public String getAllNews() {
        List<NewsEntity> news=newsDao.getAll();
        return StrToJson.allnewstojson(news);
    }

    public List<NewsEntity> getLatestNews() {
        return newsDao.getLatest();
    }
}
