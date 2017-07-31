package com.isilab.biz;

import com.isilab.entity.AcademicsEntity;

import java.util.List;

/**
 * Created by Simrit on 2017/7/31.
 */
public interface AcademicsBiz {
    public void addAcademics(String title,String content,String summary);
    public void deleteAcademics(int id);
    public List<AcademicsEntity> getAllAcademics();
    public List<AcademicsEntity> getLatestAcademics();
    AcademicsEntity getAcademics(int id);
    long pageCount();
    List<AcademicsEntity> getAcademicsByPage(int page);
}
