package com.isilab.biz.impl;

import com.isilab.biz.AcademicsBiz;
import com.isilab.dao.AcademicsDao;
import com.isilab.entity.AcademicsEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * Created by Simrit on 2017/7/31.
 */
@Service("academicsService")
@Transactional
public class AcademicsBizImpl implements AcademicsBiz {
    @Autowired
    private AcademicsDao academicsDao;
    public void addAcademics(String title,String content,String summary) {
        AcademicsEntity academicsEntity=new AcademicsEntity(title,content,new Date(new java.util.Date().getTime()),summary);
        academicsDao.save(academicsEntity);
    }
    public void deleteAcademics(int id){
        academicsDao.delete(academicsDao.get(id));
    }
    public List<AcademicsEntity> getAllAcademics() {
        return academicsDao.getAll();
    }

    public List<AcademicsEntity> getLatestAcademics(int number) {
        return academicsDao.getLatest(number);
    }
    @Transactional
    public AcademicsEntity getAcademics(int id){
        return academicsDao.get(id);
    }
    @Transactional
    public long pageCount(){
        List<AcademicsEntity> list=academicsDao.getAll();
        if (list==null||list.size()==1)
            return 1;
        long temp=list.size();
        if (temp%20!=0||temp==0)
            return temp/20+1;
        return temp/20;
    }
    //page：当前页
    @Transactional
    public List<AcademicsEntity> getAcademicsByPage(int page){
        long count =pageCount();
        if (page<0)
            page=0;
        if (page>count)
            page=(int)count;
        List<AcademicsEntity> list=academicsDao.pagedByHql(page);
        return list;
    }
}