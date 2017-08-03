package com.isilab.biz.impl;

import com.isilab.biz.ResultBiz;
import com.isilab.dao.ResultDao;
import com.isilab.entity.ResultEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * Created by Simrit on 2017/7/31.
 */
@Service("resultService")
@Transactional
public class ResultBizImpl implements ResultBiz {
    @Autowired
    private ResultDao resultDao;
    public void addResult(String title,String content,String summary) {
        ResultEntity resultEntity=new ResultEntity(title,content,new Date(new java.util.Date().getTime()),summary);
        resultDao.save(resultEntity);
    }
    public void deleteResult(int id){
        resultDao.delete(resultDao.get(id));
    }
    public List<ResultEntity> getAllResult() {
        return resultDao.getAll();
    }

    public List<ResultEntity> getLatestResult(int number) {
        return resultDao.getLatest(number);
    }
    @Transactional
    public ResultEntity getResult(int id){
        return resultDao.get(id);
    }
    @Transactional
    public long pageCount(){
        List<ResultEntity> list=resultDao.getAll();
        if (list==null||list.size()==1)
            return 1;
        long temp=list.size();
        if (temp%20!=0||temp==0)
            return temp/20+1;
        return temp/20;
    }
    @Transactional
    public List<ResultEntity> getResultByPage(int page){
        long count =pageCount();
        if (page<0)
            page=0;
        if (page>count)
            page=(int)count;
        List<ResultEntity> list=resultDao.pagedByHql(page);
        return list;
    }
}
