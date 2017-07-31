package com.isilab.biz;

import com.isilab.entity.ResultEntity;

import java.util.List;

/**
 * Created by Simrit on 2017/7/31.
 */
public interface ResultBiz {
    public void addResult(String title,String content,String summary);
    public void deleteResult(int id);
    public List<ResultEntity> getAllResult();
    public List<ResultEntity> getLatestResult();
    ResultEntity getResult(int id);
    long pageCount();
    List<ResultEntity> getResultByPage(int page);
}